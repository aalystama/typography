import 'package:flutter/material.dart';
import 'package:typography/app/orders/data/models/order_model.dart';

class OrdersList extends StatelessWidget {
  final List<Order> orders;

  const OrdersList({
    Key? key,
    required this.orders,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      itemCount: orders.length,
      separatorBuilder: (c, i) => const SizedBox(height: 16),
      itemBuilder: (c, i) => Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(8),
        ),
        child: Row(
          children: [
            const CircleAvatar(),
            Column(
              children: [
                Text(orders[i].name),
                Text(orders[i].cost.toString()),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
