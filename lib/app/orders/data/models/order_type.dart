import 'package:hive/hive.dart';

part 'order_type.g.dart';

@HiveType(typeId: 0)
enum OrderType {
  @HiveField(0)
  bCard,
  @HiveField(1)
  image,
  @HiveField(2)
  text,
}

extension on OrderType {
  String get toJson {
    return this.toString().split('.').last;
  }
}

extension on String {
  OrderType get toOrderType {
    switch (this) {
      case 'bCard':
        return OrderType.bCard;
      case 'image':
        return OrderType.image;
      case 'text':
        return OrderType.text;
      default:
        throw UnimplementedError();
    }
  }
}
