import 'package:core_catalogo_module/core/app_component.dart';
import 'package:core_catalogo_module/core/helper/isar_helper.dart';
import 'package:core_catalogo_module/core/network/networ_info.dart';
import 'package:core_catalogo_module/feature/data/datasource/storelocaldatasource/store_local_data_source.dart';
import 'package:core_catalogo_module/feature/data/datasource/storeremotedatasource/store_remote_data_source.dart';
import 'package:core_catalogo_module/feature/data/model/response/product_model.dart';
import 'package:core_catalogo_module/feature/data/model/response/category_model.dart';
import 'package:core_catalogo_module/feature/data/model/request/set_favorite_request_model.dart';
import 'package:core_catalogo_module/core/error/exception.dart';
import 'package:core_catalogo_module/feature/domain/repositories/store_repository.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

@Injectable(as: StoreRepository)
class StoreRepositoryUseCase implements StoreRepository {
  StoreRepositoryUseCase({
    required this.networkInfo,
    required this.storeRemoteDataSource,
    required this.storeLocalDataSource,
  });
  final NetworkInfo networkInfo;
  final StoreRemoteDataSource storeRemoteDataSource;
  final StoreLocalDataSource storeLocalDataSource;

  @override
  Future<Either<GenericException, bool>> favoriteProduct(
      SetFavoriteRequestModel setFavoriteRequestModel) async {
    try {
      if (await networkInfo.isConnected) {
        final _result = await storeRemoteDataSource
            .favoriteProduct(setFavoriteRequestModel);
        final _locaProduct = await storeRemoteDataSource.searchProductById(
          productId: _result.reponse.idProduct as int,
        );
        await locator<IsarHelper>().saveIsarFavoriteProdut(_locaProduct);
        return  Right(_result.reponse.isFavorire);
      } else {
        throw InternetException();
      }
    } on GenericException {
      return Left(NetworkException());
    }
  }

  @override
  Future<Either<GenericException, CategoryModel>> getAllCategory() async {
    try {
      if (await networkInfo.isConnected) {
        final _categories = await storeRemoteDataSource.getAllCategory();
        storeLocalDataSource.saveCategory(_categories);
        return Right(_categories);
      } else {
        final categories = await storeLocalDataSource.getAllCategory();
        return Right(categories);
      }
    } on GenericException {
      return Left(NetworkException());
    }
  }

  @override
  Future<Either<GenericException, ProductModel>> getAllProduct(
      {required int offset, required int limit}) async {
    try {
      if (await networkInfo.isConnected) {
        final _products = await storeRemoteDataSource.getAllProduct(
            offset: offset, limit: limit);
        return Right(_products);
      } else {
        throw InternetException();
      }
    } on GenericException {
      return Left(NetworkException());
    }
  }

  @override
  Future<Either<GenericException, ProductModel>> searchByTagProduct(
      {required int tagId}) async {
    try {
      if (await networkInfo.isConnected) {
        final _products =
            await storeRemoteDataSource.searchByTagProduct(tagId: tagId);
        return Right(_products);
      } else {
        throw InternetException();
      }
    } on GenericException {
      return Left(NetworkException());
    }
  }

  @override
  Future<Either<GenericException, ProductModel>> searchProductByName(
      {required String productName}) async {
    try {
      if (await networkInfo.isConnected) {
        final _products = await storeRemoteDataSource.searchProductName(
            productName: productName);
        return Right(_products);
      } else {
        throw InternetException();
      }
    } on GenericException {
      return Left(NetworkException());
    }
  }

  @override
  Future<Either<GenericException, ProductModel>>
      searchByIsFavoriteProduct() async {
    try {
      if (await networkInfo.isConnected) {
        final _products =
            await storeRemoteDataSource.searchByIsFavoriteProduct();
        return Right(_products);
      } else {
           final _products =
            await storeLocalDataSource.getFavoritesProduct();
        return Right(_products);
      }
    } on GenericException {
      return Left(NetworkException());
    }
  }

  @override
  Future<Either<GenericException, ProductModel>> searchByProdcutId(
      {required int id}) async{
    try {
      if (await networkInfo.isConnected) {
        final _products =
            await storeRemoteDataSource.searchProductById(productId: id);
        return Right(_products);
      } else {
        throw InternetException();
      }
    } on GenericException {
      return Left(NetworkException());
    }
  }
}
