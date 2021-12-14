import 'package:hive_flutter/hive_flutter.dart';
import 'package:typography/app/orders/data/models/order_model.dart';
import 'package:typography/app/orders/data/models/order_type.dart';

class AppStorage {
  static Future<void> init() async {
    await Hive.initFlutter();
    await Hive.openBox<Order>('orders');
    Hive.registerAdapter(OrderTypeAdapter());
    Hive.registerAdapter(OrderAdapter());
  }
}
