// Mocks generated by Mockito 5.1.0 from annotations
// in core_catalogo_module/test/feature/data/storeremotedatasourcetest/store_remote_data_source_test.dart.
// Do not manually edit this file.

import 'dart:async' as _i6;

import 'package:core_catalogo_module/feature/data/datasource/storeremotedatasource/store_remote_data_source.dart'
    as _i5;
import 'package:core_catalogo_module/feature/data/model/request/set_favorite_request_model.dart'
    as _i7;
import 'package:core_catalogo_module/feature/data/model/response/category_model.dart'
    as _i3;
import 'package:core_catalogo_module/feature/data/model/response/product_model.dart'
    as _i2;
import 'package:core_catalogo_module/feature/data/model/response/update_product_response.dart'
    as _i4;
import 'package:mockito/mockito.dart' as _i1;

// ignore_for_file: type=lint
// ignore_for_file: avoid_redundant_argument_values
// ignore_for_file: avoid_setters_without_getters
// ignore_for_file: comment_references
// ignore_for_file: implementation_imports
// ignore_for_file: invalid_use_of_visible_for_testing_member
// ignore_for_file: prefer_const_constructors
// ignore_for_file: unnecessary_parenthesis
// ignore_for_file: camel_case_types

class _FakeProductModel_0 extends _i1.Fake implements _i2.ProductModel {}

class _FakeCategoryModel_1 extends _i1.Fake implements _i3.CategoryModel {}

class _FakeUpdateProductByModel_2 extends _i1.Fake
    implements _i4.UpdateProductByModel {}

/// A class which mocks [StoreRemoteDataSource].
///
/// See the documentation for Mockito's code generation for more information.
class MockStoreRemoteDataSource extends _i1.Mock
    implements _i5.StoreRemoteDataSource {
  MockStoreRemoteDataSource() {
    _i1.throwOnMissingStub(this);
  }

  @override
  _i6.Future<_i2.ProductModel> searchByIsFavoriteProduct() =>
      (super.noSuchMethod(Invocation.method(#searchByIsFavoriteProduct, []),
              returnValue:
                  Future<_i2.ProductModel>.value(_FakeProductModel_0()))
          as _i6.Future<_i2.ProductModel>);
  @override
  _i6.Future<_i2.ProductModel> getAllProduct({int? offset, int? limit}) =>
      (super.noSuchMethod(
              Invocation.method(
                  #getAllProduct, [], {#offset: offset, #limit: limit}),
              returnValue:
                  Future<_i2.ProductModel>.value(_FakeProductModel_0()))
          as _i6.Future<_i2.ProductModel>);
  @override
  _i6.Future<_i3.CategoryModel> getAllCategory() => (super.noSuchMethod(
          Invocation.method(#getAllCategory, []),
          returnValue: Future<_i3.CategoryModel>.value(_FakeCategoryModel_1()))
      as _i6.Future<_i3.CategoryModel>);
  @override
  _i6.Future<_i2.ProductModel> searchProductName({String? productName}) =>
      (super.noSuchMethod(
              Invocation.method(
                  #searchProductName, [], {#productName: productName}),
              returnValue:
                  Future<_i2.ProductModel>.value(_FakeProductModel_0()))
          as _i6.Future<_i2.ProductModel>);
  @override
  _i6.Future<_i2.ProductModel> searchProductById({int? productId}) =>
      (super.noSuchMethod(
          Invocation.method(#searchProductById, [], {#productId: productId}),
          returnValue:
              Future<_i2.ProductModel>.value(_FakeProductModel_0())) as _i6
          .Future<_i2.ProductModel>);
  @override
  _i6.Future<_i2.ProductModel> searchByTagProduct({int? tagId}) => (super
      .noSuchMethod(Invocation.method(#searchByTagProduct, [], {#tagId: tagId}),
          returnValue:
              Future<_i2.ProductModel>.value(_FakeProductModel_0())) as _i6
      .Future<_i2.ProductModel>);
  @override
  _i6.Future<_i4.UpdateProductByModel> favoriteProduct(
          _i7.SetFavoriteRequestModel? setFavoriteRequestModel) =>
      (super.noSuchMethod(
              Invocation.method(#favoriteProduct, [setFavoriteRequestModel]),
              returnValue: Future<_i4.UpdateProductByModel>.value(
                  _FakeUpdateProductByModel_2()))
          as _i6.Future<_i4.UpdateProductByModel>);
}
