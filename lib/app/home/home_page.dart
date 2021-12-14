import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:typography/app/orders/data/blocs/orders_cubit.dart';
import 'package:typography/app/orders/data/models/order_model.dart';
import 'package:typography/app/orders/view/orders_list.dart';
import 'package:typography/router/router.gr.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Typography'),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          AutoRouter.of(context).push(const AddOrderRoute());
        },
        child: const Icon(Icons.add),
      ),
      body: BlocBuilder<OrdersCubit, List<Order>>(
        builder: (context, state) {
          return OrdersList(
            orders: state,
          );
        },
      ),
    );
  }
}
