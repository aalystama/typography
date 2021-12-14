import 'package:bloc/bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:typography/app/orders/data/models/order_model.dart';
import 'package:typography/app/orders/data/sources/i_orders_datasource.dart';

@lazySingleton
class OrdersCubit extends Cubit<List<Order>> {
  final IOrdersDatasource ordersDatasource;

  OrdersCubit({required this.ordersDatasource})
      : super(ordersDatasource.getOrders()) {
    ordersDatasource.stream.listen((event) {
      emit(ordersDatasource.getOrders());
    });
  }

  void addOrder(Order order) => ordersDatasource.addOrder(order);
}
