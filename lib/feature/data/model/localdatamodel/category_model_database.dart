import 'package:isar/isar.dart';
part 'category_model_database.g.dart';

@Collection()
class CategoryModelDataBase {
  @Id()
  int? id;
  late List<ProductCategoryDataBase> listProductCategory;
}

@Collection()
class ProductCategoryDataBase {
  @Id()
  int? id;
  late String description;
}
