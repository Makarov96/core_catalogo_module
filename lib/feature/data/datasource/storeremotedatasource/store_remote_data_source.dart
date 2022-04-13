import 'dart:convert';

import 'package:core_catalogo_module/core/app_component.dart';
import 'package:core_catalogo_module/core/conf/host.dart';
import 'package:core_catalogo_module/core/error/exception.dart';

import 'package:core_catalogo_module/feature/data/model/request/set_favorite_request_model.dart';
import 'package:core_catalogo_module/feature/data/model/response/category_model.dart';
import 'package:core_catalogo_module/feature/data/model/response/product_model.dart';
import 'package:core_catalogo_module/feature/data/model/response/update_product_response.dart';
import 'package:http/http.dart' as http;
import 'package:injectable/injectable.dart';

abstract class StoreRemoteDataSource {
  Future<ProductModel> searchByIsFavoriteProduct();
  Future<ProductModel> getAllProduct({
    required int offset,
    required int limit,
  });
  Future<CategoryModel> getAllCategory();
  Future<ProductModel> searchProductName({required String productName});
  Future<ProductModel> searchProductById({required int productId});
  Future<ProductModel> searchByTagProduct({required int tagId});
  Future<UpdateProductByModel> favoriteProduct(
    SetFavoriteRequestModel setFavoriteRequestModel,
  );
}

@Injectable(as: StoreRemoteDataSource)
class StoreRepositoryRemoteDataSource implements StoreRemoteDataSource {
  StoreRepositoryRemoteDataSource();
  @override
  Future<UpdateProductByModel> favoriteProduct(
      SetFavoriteRequestModel setFavoriteRequestModel) async {
    EndPoint.urlCategory;

    try {
      final response = await locator.get<http.Client>().put(
            Uri.parse(EndPoint.urlSetFavoriteProduct),
            body: jsonEncode(setFavoriteRequestModel.toJson()),
            headers: EndPoint.header,
          );
      if (response.statusCode == 200) {
        return UpdateProductByModel.fromJson(jsonDecode(response.body));
      } else {
        throw ServerException();
      }
    } on GenericException {
      throw ServerException();
    }
  }

  @override
  Future<CategoryModel> getAllCategory() async {
    try {
      final response = await locator
          .get<http.Client>()
          .get(Uri.parse(EndPoint.urlCategory), headers: EndPoint.header);
      if (response.statusCode == 200) {
        return CategoryModel.fromJson(jsonDecode(response.body));
      } else {
        throw ServerException();
      }
    } on GenericException {
      throw ServerException();
    }
  }

  @override
  Future<ProductModel> searchByIsFavoriteProduct() async {
    try {
      final response = await locator.get<http.Client>().get(
          Uri.parse(EndPoint.urlSearchByProductStatusFavorite + 'true'),
          headers: EndPoint.header);
      if (response.statusCode == 200) {
        return ProductModel.fromJson(jsonDecode(response.body));
      } else {
        throw ServerException();
      }
    } on GenericException {
      throw ServerException();
    }
  }

  @override
  Future<ProductModel> getAllProduct(
      {required int offset, required int limit}) async {
    try {
      final response = await locator.get<http.Client>().get(
          Uri.parse(EndPoint.urlGetProducts + '$offset/$limit'),
          headers: EndPoint.header);
      if (response.statusCode == 200) {
        return ProductModel.fromJson(jsonDecode(response.body));
      } else {
        throw ServerException();
      }
    } catch (e) {
      throw ServerException(e.toString());
    }
  }

  @override
  Future<ProductModel> searchByTagProduct({required int tagId}) async {
    try {
      final response = await locator.get<http.Client>().get(
            Uri.parse(EndPoint.urlSearchByTag + '$tagId'),
            headers: EndPoint.header,
          );
      if (response.statusCode == 200) {
        return ProductModel.fromJson(jsonDecode(response.body));
      } else {
        throw ServerException();
      }
    } on GenericException {
      throw ServerException();
    }
  }

  @override
  Future<ProductModel> searchProductName({required String productName}) async {
    try {
      final response = await locator.get<http.Client>().get(
            Uri.parse(EndPoint.urlSearch + productName),
            headers: EndPoint.header,
          );
      if (response.statusCode == 200) {
        return ProductModel.fromJson(jsonDecode(response.body));
      } else {
        throw ServerException();
      }
    } on GenericException {
      throw ServerException();
    }
  }

  @override
  Future<ProductModel> searchProductById({required int productId}) async {
    try {
      final response = await locator.get<http.Client>().get(
            Uri.parse(EndPoint.urlSearchByProductId + '$productId'),
            headers: EndPoint.header,
          );
      if (response.statusCode == 200) {
        return ProductModel.fromJson(jsonDecode(response.body));
      } else {
        throw ServerException();
      }
    } on GenericException {
      throw ServerException();
    }
  }
}
