import 'package:flutter/material.dart';
import 'package:typography/app/orders/data/models/order_model.dart';
import 'package:typography/app/orders/data/models/order_type.dart';

class OrdersList extends StatelessWidget {
  final List<Order> orders;

  const OrdersList({
    Key? key,
    required this.orders,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    if (orders.isEmpty) {
      return const Center(
        child: Text('Заказов нет'),
      );
    }

    return ListView.separated(
      itemCount: orders.length,
      padding: const EdgeInsets.symmetric(horizontal: 16),
      separatorBuilder: (c, i) => const SizedBox(height: 8),
      itemBuilder: (c, i) => Card(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    orders[i].name,
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                    ),
                  ),
                  const SizedBox(height: 8),
                  Text(
                    orders[i].type.asString,
                  ),
                  const SizedBox(height: 4),
                  Text('${orders[i].height} x ${orders[i].width}'),
                ],
              ),
              Text(
                '${orders[i].cost} тг',
                style: const TextStyle(fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
