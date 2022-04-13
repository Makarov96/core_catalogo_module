import 'package:core_catalogo_module/core/error/exception.dart';
import 'package:isar/isar.dart';
import 'package:core_catalogo_module/core/app_component.dart';
import 'package:core_catalogo_module/core/conf/isar_configuration.dart';
import 'package:core_catalogo_module/feature/data/model/localdatamodel/product_model_database.dart';
import 'package:core_catalogo_module/feature/data/model/response/category_model.dart';
import 'package:core_catalogo_module/feature/data/model/response/product_model.dart';
import 'package:core_catalogo_module/feature/data/model/localdatamodel/category_model_database.dart';

class IsarHelper {
  Future<bool> saveIsarFavoriteProdut(ProductModel model) async {
   

    try {
      final products = ProductModelDatabase();
      for (var eFromModel in model.product) {
        for (var eDatabase in products.product) {
          eDatabase.id = eFromModel.id;
          eDatabase.isFavorite = eFromModel.isFavorite;
          eDatabase.productCategory = eFromModel.productCategory;
          eDatabase.productDescription = eFromModel.productDescription;
          eDatabase.productImage = eFromModel.productImage;
          eDatabase.productName = eFromModel.productName;
          eDatabase.productPrice = eFromModel.productPrice;
          eDatabase.quantityAvailable = eFromModel.quantityAvailable;
          eDatabase.urlMoreDetail = eFromModel.urlMoreDetail;
        }
      }

      locator<IsarConfiguration>().instace.writeTxn((isar) async {
        isar.productModelDatabases.put(products);
      });
      return true;
    } catch (_) {
      return false;
    }
  }

  Future<CategoryModel> getAllCategory() async {
    try {
      final productCategoryDataBases = await locator
          .get<IsarConfiguration>()
          .instace
          .productCategoryDataBases
          .where()
          .findAll();
      List<ProductCategory> _productModel = [];
      for (var element in productCategoryDataBases) {
        _productModel.add(ProductCategory(element.description, element.id!));
      }
      return CategoryModel(listProductCategory: _productModel);
    } on GenericException {
      throw LocalDataException();
    }
  }

  Future<ProductModel> getAllFavorites() async {
    List<Product> listProduct = [];
    final productFavoriteDataBases = await locator
        .get<IsarConfiguration>()
        .instace
        .productModelDatabases
        .where()
        .findAll();
    for (var product in productFavoriteDataBases) {
      print(product);
    }

    return ProductModel(product: listProduct);
  }

  Future<bool> saveCategory(CategoryModel model) async {
    try {
      locator<IsarConfiguration>().instace.writeTxn((isar) async {
        final dbParams = ProductCategoryDataBase();
        for (var mDescriotion in model.listProductCategory) {
          dbParams.id = mDescriotion.id.toInt();
          dbParams.description = mDescriotion.description;
          isar.productCategoryDataBases.put(dbParams);
        }
      });
      return true;
    } on GenericException {
      throw LocalDataException();
    }
  }
}
