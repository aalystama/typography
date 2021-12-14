import 'package:hive/hive.dart';
import 'package:injectable/injectable.dart';
import 'package:typography/app/orders/data/models/order_model.dart';

@module
abstract class InjectableModules {
  Box<Order> get ordersBox => Hive.box<Order>('orders');
}
