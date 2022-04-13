import 'package:core_catalogo_module/core/error/exception.dart';
import 'package:core_catalogo_module/feature/data/model/request/set_favorite_request_model.dart';
import 'package:core_catalogo_module/feature/data/model/response/category_model.dart';
import 'package:core_catalogo_module/feature/data/model/response/product_model.dart';
import 'package:dartz/dartz.dart';

abstract class StoreRepository {
  Future<Either<GenericException, ProductModel>> getAllProduct({
    required int offset,
    required int limit,
  });
  Future<Either<GenericException, CategoryModel>> getAllCategory();
  Future<Either<GenericException, ProductModel>> searchProductByName(
      {required String productName});
  Future<Either<GenericException, ProductModel>> searchByTagProduct(
      {required int tagId});
  Future<Either<GenericException, bool>> favoriteProduct(
    SetFavoriteRequestModel setFavoriteRequestModel,
  );

  Future<Either<GenericException, ProductModel>> searchByProdcutId(
      {required int id});
  Future<Either<GenericException, ProductModel>> searchByIsFavoriteProduct();
}
