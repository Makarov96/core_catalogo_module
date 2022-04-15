// Mocks generated by Mockito 5.1.0 from annotations
// in core_catalogo_module/test/feature/data/storelocaldatasourcetest/store_local_data_source_test.dart.
// Do not manually edit this file.

import 'dart:async' as _i5;

import 'package:core_catalogo_module/feature/data/datasource/storelocaldatasource/store_local_data_source.dart'
    as _i4;
import 'package:core_catalogo_module/feature/data/model/response/category_model.dart'
    as _i2;
import 'package:core_catalogo_module/feature/data/model/response/product_model.dart'
    as _i3;
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

class _FakeCategoryModel_0 extends _i1.Fake implements _i2.CategoryModel {}

class _FakeProductModel_1 extends _i1.Fake implements _i3.ProductModel {}

/// A class which mocks [StoreLocalDataSource].
///
/// See the documentation for Mockito's code generation for more information.
class MockStoreLocalDataSource extends _i1.Mock
    implements _i4.StoreLocalDataSource {
  MockStoreLocalDataSource() {
    _i1.throwOnMissingStub(this);
  }

  @override
  _i5.Future<_i2.CategoryModel> getAllCategory() => (super.noSuchMethod(
          Invocation.method(#getAllCategory, []),
          returnValue: Future<_i2.CategoryModel>.value(_FakeCategoryModel_0()))
      as _i5.Future<_i2.CategoryModel>);
  @override
  _i5.Future<bool> saveFavoriteProduct(_i3.ProductModel? model) =>
      (super.noSuchMethod(Invocation.method(#saveFavoriteProduct, [model]),
          returnValue: Future<bool>.value(false)) as _i5.Future<bool>);
  @override
  _i5.Future<bool> saveCategory(_i2.CategoryModel? model) =>
      (super.noSuchMethod(Invocation.method(#saveCategory, [model]),
          returnValue: Future<bool>.value(false)) as _i5.Future<bool>);
  @override
  _i5.Future<_i3.ProductModel> getFavoritesProduct() => (super.noSuchMethod(
          Invocation.method(#getFavoritesProduct, []),
          returnValue: Future<_i3.ProductModel>.value(_FakeProductModel_1()))
      as _i5.Future<_i3.ProductModel>);
}
