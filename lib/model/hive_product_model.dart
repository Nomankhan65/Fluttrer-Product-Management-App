import 'package:hive/hive.dart';
part 'hive_product_model.g.dart'; // Ensure the generated file matches this name


@HiveType(typeId: 0)
class HiveProductModel {
  @HiveField(0)
  int id;

  @HiveField(1)
  String title;

  @HiveField(2)
  double price;

  @HiveField(3)
  String description;

  @HiveField(4)
  String image;
  @HiveField(5)
  int quantity;

  HiveProductModel({
    required this.id,
    required this.title,
    required this.price,
    required this.description,
    required this.image,
    required this.quantity,
  });
}


@HiveType(typeId: 0)
class ProductModel {
  @HiveField(0)
  int id;

  @HiveField(1)
  String title;

  @HiveField(2)
  double price;

  @HiveField(3)
  String description;

  @HiveField(4)
  String image;
  @HiveField(5)
  int quantity;
  ProductModel({
    required this.id,
    required this.title,
    required this.price,
    required this.description,
    required this.image,
    required this.quantity
  });
}
