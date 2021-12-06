// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'order_type.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class OrderTypeAdapter extends TypeAdapter<OrderType> {
  @override
  final int typeId = 0;

  @override
  OrderType read(BinaryReader reader) {
    switch (reader.readByte()) {
      case 0:
        return OrderType.bCard;
      case 1:
        return OrderType.image;
      case 2:
        return OrderType.text;
      default:
        return OrderType.bCard;
    }
  }

  @override
  void write(BinaryWriter writer, OrderType obj) {
    switch (obj) {
      case OrderType.bCard:
        writer.writeByte(0);
        break;
      case OrderType.image:
        writer.writeByte(1);
        break;
      case OrderType.text:
        writer.writeByte(2);
        break;
    }
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is OrderTypeAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
