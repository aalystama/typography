import 'package:typography/app/orders/data/models/order_model.dart';

abstract class IOrdersDatasource {
  List<Order> getOrders();

  void addOrder(Order order);
}
