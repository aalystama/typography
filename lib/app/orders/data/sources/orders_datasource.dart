import 'package:hive/hive.dart';
import 'package:injectable/injectable.dart';
import 'package:typography/app/orders/data/models/order_model.dart';
import 'package:typography/app/orders/data/sources/i_orders_datasource.dart';

@LazySingleton(as: IOrdersDatasource)
class OrdersDatasource implements IOrdersDatasource {
  final Box<Order> box;

  OrdersDatasource({required this.box});

  @override
  void addOrder(Order order) => box.add(order);

  @override
  List<Order> getOrders() => box.values.toList();

  @override
  Stream<Order?> get stream => box.watch().map((event) => event.value);
}
