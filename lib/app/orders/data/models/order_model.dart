import 'package:hive/hive.dart';

import 'order_type.dart';

part 'order_model.g.dart';

@HiveType(typeId: 1)
class Order {
  @HiveField(0)
  final String name;
  @HiveField(1)
  final OrderType type;
  @HiveField(2)
  final double height;
  @HiveField(3)
  final double width;
  @HiveField(4)
  final double cost;

  Order({
    required this.name,
    required this.type,
    required this.height,
    required this.width,
    required this.cost,
  });
}
