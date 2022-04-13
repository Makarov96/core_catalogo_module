import 'package:isar/isar.dart';

part 'product_model_database.g.dart';

@Collection()
class ProductModelDatabase {
  @Id()
  int? id;

  late List<ProductDatabase> product;
}

@Collection()
class ProductDatabase {
  @Id()
  int? id;
  late bool isFavorite;

  late num productCategory;

  late String productDescription;

  late String productImage;

  late String productName;

  late String productPrice;

  late num quantityAvailable;

  late String urlMoreDetail;
}
