import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:typography/app/orders/data/blocs/orders_cubit.dart';
import 'package:typography/app/orders/data/models/order_model.dart';
import 'package:typography/app/orders/data/models/order_type.dart';

class AddOrderPage extends StatefulWidget {
  const AddOrderPage({Key? key}) : super(key: key);

  @override
  State<AddOrderPage> createState() => _AddOrderPageState();
}

class _AddOrderPageState extends State<AddOrderPage> {
  final Map<String, TextEditingController> controllers = {
    'name': TextEditingController(),
    'height': TextEditingController(),
    'width': TextEditingController(),
  };

  OrderType orderType = OrderType.bCard;
  void setOrderType(OrderType? value) {
    setState(() {
      orderType = value!;
    });
    setCost();
  }

  double cost = 0;
  void setCost() {
    double height = double.parse(
      controllers['height']!.text.isEmpty ? '0' : controllers['height']!.text,
    );
    double width = double.parse(
      controllers['width']!.text.isEmpty ? '0' : controllers['width']!.text,
    );

    setState(() {
      cost = (height * width) * orderType.fare;
    });
  }

  @override
  void initState() {
    controllers['height']!.addListener(() {
      setCost();
    });
    controllers['width']!.addListener(() {
      setCost();
    });
    super.initState();
  }

  bool get validateFields {
    return controllers['name']!.text.isNotEmpty && cost != 0;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Добавить заказ'),
      ),
      floatingActionButton: validateFields
          ? FloatingActionButton(
              onPressed: () {
                Order order = Order(
                  name: controllers['name']!.text,
                  type: orderType,
                  height: double.parse(controllers['height']!.text),
                  width: double.parse(controllers['width']!.text),
                  cost: cost,
                );

                try {
                  BlocProvider.of<OrdersCubit>(context).addOrder(order);

                  AutoRouter.of(context).pop();
                } catch (e) {
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(
                      content: Text('Произошла ошибка!'),
                    ),
                  );
                }
              },
              child: const Icon(Icons.done),
            )
          : null,
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        children: [
          TextField(
            controller: controllers['name'],
            decoration: const InputDecoration(hintText: 'Название заказа'),
          ),
          const SizedBox(height: 8),
          TextField(
            controller: controllers['height'],
            decoration: const InputDecoration(hintText: 'Длина полотна (см)'),
            keyboardType: TextInputType.number,
          ),
          const SizedBox(height: 8),
          TextField(
            controller: controllers['width'],
            decoration: const InputDecoration(hintText: 'Ширина полотна (см)'),
            keyboardType: TextInputType.number,
          ),
          const SizedBox(height: 8),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text('Тип заказа'),
              DropdownButton(
                value: orderType,
                onChanged: setOrderType,
                items: OrderType.values
                    .map(
                      (e) => DropdownMenuItem(
                        child: Text(e.asString),
                        value: e,
                      ),
                    )
                    .toList(),
              ),
            ],
          ),
          const SizedBox(height: 8),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text('Стоимость'),
              Text(cost.toString()),
            ],
          ),
        ],
      ),
    );
  }
}
