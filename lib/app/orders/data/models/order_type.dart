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

extension OrderTypeExtension on OrderType {
  String get asString {
    switch (this) {
      case OrderType.bCard:
        return 'Визитка';
      case OrderType.image:
        return 'Картина';
      case OrderType.text:
        return 'Текст';
    }
  }

  double get fare {
    switch (this) {
      case OrderType.bCard:
        return 5;
      case OrderType.image:
        return 10;
      case OrderType.text:
        return 15;
    }
  }
}
