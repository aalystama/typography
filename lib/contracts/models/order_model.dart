import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';
import 'package:typography/contracts/models/categories.dart';

part 'order_model.freezed.dart';

@freezed
class Order with _$Order {
  factory Order({
    required String name,
    required OrderType orderType,
    required double height,
    required double width,
    required double cost,
  }) = _Order;
}
