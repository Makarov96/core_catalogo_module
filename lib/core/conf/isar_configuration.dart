import 'package:core_catalogo_module/feature/data/model/localdatamodel/category_model_database.dart';
import 'package:core_catalogo_module/feature/data/model/localdatamodel/product_model_database.dart';
import 'package:injectable/injectable.dart';
import 'package:isar/isar.dart';
import 'package:path_provider/path_provider.dart';

@lazySingleton
class IsarConfiguration {
  late final Isar _isar;

  Future<void> openMultipleBox() async {
    _isar = await Isar.open(
      schemas: [
        CategoryModelDataBaseSchema,
        ProductCategoryDataBaseSchema,
        ProductModelDatabaseSchema,
        ProductDatabaseSchema,
      ],
      directory: (await getApplicationDocumentsDirectory()).path,
    );
  }

  Isar get instace => _isar;
}
