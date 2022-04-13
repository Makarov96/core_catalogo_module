
import 'package:core_catalogo_module/core/helper/isar_helper.dart';
import 'package:core_catalogo_module/feature/data/model/response/category_model.dart';
import 'package:core_catalogo_module/feature/data/model/response/product_model.dart';
import 'package:injectable/injectable.dart';
import 'package:core_catalogo_module/core/app_component.dart';

abstract class StoreLocalDataSource {
  Future<CategoryModel> getAllCategory();

  Future<bool> saveFavoriteProduct(
    ProductModel model,
  );
  Future<bool> saveCategory(CategoryModel model);

  Future<ProductModel> getFavoritesProduct();
}

@Injectable(as: StoreLocalDataSource)
class StoreRepositoryLocalDataSource implements StoreLocalDataSource {
  StoreRepositoryLocalDataSource();

  @override
  Future<CategoryModel> getAllCategory() async =>
      locator<IsarHelper>().getAllCategory();

  @override
  Future<bool> saveFavoriteProduct(ProductModel model) async =>
      locator.get<IsarHelper>().saveIsarFavoriteProdut(model);

  @override
  Future<bool> saveCategory(CategoryModel model) async =>
      locator.get<IsarHelper>().saveCategory(model);

  @override
  Future<ProductModel> getFavoritesProduct() async =>
      locator.get<IsarHelper>().getAllFavorites();
}
