import 'package:hive_flutter/hive_flutter.dart';
import 'package:typography/app/orders/data/models/order_model.dart';

class AppStorage {
  static Future<void> init() async {
    await Hive.initFlutter();
    await Hive.openBox<Order>('orders');
  }
}
