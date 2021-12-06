import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';
import 'package:hive/hive.dart';

import 'order_type.dart';

part 'order_model.freezed.dart';

@freezed
abstract class Order with _$Order {
  @HiveType(typeId: 1)
  factory Order({
    @HiveField(0) required String name,
    @HiveField(1) required OrderType orderType,
    @HiveField(2) required double height,
    @HiveField(3) required double width,
    @HiveField(4) required double cost,
  }) = _Order;
}
