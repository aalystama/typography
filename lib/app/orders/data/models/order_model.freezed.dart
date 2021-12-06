// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'order_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$OrderTearOff {
  const _$OrderTearOff();

  _Order call(
      {@HiveField(0) required String name,
      @HiveField(1) required OrderType orderType,
      @HiveField(2) required double height,
      @HiveField(3) required double width,
      @HiveField(4) required double cost}) {
    return _Order(
      name: name,
      orderType: orderType,
      height: height,
      width: width,
      cost: cost,
    );
  }
}

/// @nodoc
const $Order = _$OrderTearOff();

/// @nodoc
mixin _$Order {
  @HiveField(0)
  String get name => throw _privateConstructorUsedError;
  @HiveField(1)
  OrderType get orderType => throw _privateConstructorUsedError;
  @HiveField(2)
  double get height => throw _privateConstructorUsedError;
  @HiveField(3)
  double get width => throw _privateConstructorUsedError;
  @HiveField(4)
  double get cost => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $OrderCopyWith<Order> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OrderCopyWith<$Res> {
  factory $OrderCopyWith(Order value, $Res Function(Order) then) =
      _$OrderCopyWithImpl<$Res>;
  $Res call(
      {@HiveField(0) String name,
      @HiveField(1) OrderType orderType,
      @HiveField(2) double height,
      @HiveField(3) double width,
      @HiveField(4) double cost});
}

/// @nodoc
class _$OrderCopyWithImpl<$Res> implements $OrderCopyWith<$Res> {
  _$OrderCopyWithImpl(this._value, this._then);

  final Order _value;
  // ignore: unused_field
  final $Res Function(Order) _then;

  @override
  $Res call({
    Object? name = freezed,
    Object? orderType = freezed,
    Object? height = freezed,
    Object? width = freezed,
    Object? cost = freezed,
  }) {
    return _then(_value.copyWith(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      orderType: orderType == freezed
          ? _value.orderType
          : orderType // ignore: cast_nullable_to_non_nullable
              as OrderType,
      height: height == freezed
          ? _value.height
          : height // ignore: cast_nullable_to_non_nullable
              as double,
      width: width == freezed
          ? _value.width
          : width // ignore: cast_nullable_to_non_nullable
              as double,
      cost: cost == freezed
          ? _value.cost
          : cost // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
abstract class _$OrderCopyWith<$Res> implements $OrderCopyWith<$Res> {
  factory _$OrderCopyWith(_Order value, $Res Function(_Order) then) =
      __$OrderCopyWithImpl<$Res>;
  @override
  $Res call(
      {@HiveField(0) String name,
      @HiveField(1) OrderType orderType,
      @HiveField(2) double height,
      @HiveField(3) double width,
      @HiveField(4) double cost});
}

/// @nodoc
class __$OrderCopyWithImpl<$Res> extends _$OrderCopyWithImpl<$Res>
    implements _$OrderCopyWith<$Res> {
  __$OrderCopyWithImpl(_Order _value, $Res Function(_Order) _then)
      : super(_value, (v) => _then(v as _Order));

  @override
  _Order get _value => super._value as _Order;

  @override
  $Res call({
    Object? name = freezed,
    Object? orderType = freezed,
    Object? height = freezed,
    Object? width = freezed,
    Object? cost = freezed,
  }) {
    return _then(_Order(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      orderType: orderType == freezed
          ? _value.orderType
          : orderType // ignore: cast_nullable_to_non_nullable
              as OrderType,
      height: height == freezed
          ? _value.height
          : height // ignore: cast_nullable_to_non_nullable
              as double,
      width: width == freezed
          ? _value.width
          : width // ignore: cast_nullable_to_non_nullable
              as double,
      cost: cost == freezed
          ? _value.cost
          : cost // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc

@HiveType(typeId: 1)
class _$_Order with DiagnosticableTreeMixin implements _Order {
  _$_Order(
      {@HiveField(0) required this.name,
      @HiveField(1) required this.orderType,
      @HiveField(2) required this.height,
      @HiveField(3) required this.width,
      @HiveField(4) required this.cost});

  @override
  @HiveField(0)
  final String name;
  @override
  @HiveField(1)
  final OrderType orderType;
  @override
  @HiveField(2)
  final double height;
  @override
  @HiveField(3)
  final double width;
  @override
  @HiveField(4)
  final double cost;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'Order(name: $name, orderType: $orderType, height: $height, width: $width, cost: $cost)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'Order'))
      ..add(DiagnosticsProperty('name', name))
      ..add(DiagnosticsProperty('orderType', orderType))
      ..add(DiagnosticsProperty('height', height))
      ..add(DiagnosticsProperty('width', width))
      ..add(DiagnosticsProperty('cost', cost));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Order &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.orderType, orderType) ||
                other.orderType == orderType) &&
            (identical(other.height, height) || other.height == height) &&
            (identical(other.width, width) || other.width == width) &&
            (identical(other.cost, cost) || other.cost == cost));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, name, orderType, height, width, cost);

  @JsonKey(ignore: true)
  @override
  _$OrderCopyWith<_Order> get copyWith =>
      __$OrderCopyWithImpl<_Order>(this, _$identity);
}

abstract class _Order implements Order {
  factory _Order(
      {@HiveField(0) required String name,
      @HiveField(1) required OrderType orderType,
      @HiveField(2) required double height,
      @HiveField(3) required double width,
      @HiveField(4) required double cost}) = _$_Order;

  @override
  @HiveField(0)
  String get name;
  @override
  @HiveField(1)
  OrderType get orderType;
  @override
  @HiveField(2)
  double get height;
  @override
  @HiveField(3)
  double get width;
  @override
  @HiveField(4)
  double get cost;
  @override
  @JsonKey(ignore: true)
  _$OrderCopyWith<_Order> get copyWith => throw _privateConstructorUsedError;
}
