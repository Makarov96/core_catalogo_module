import 'package:core_catalogo_module/feature/data/datasource/storelocaldatasource/store_local_data_source.dart';
import 'package:core_catalogo_module/feature/data/model/response/category_model.dart';
import 'package:core_catalogo_module/feature/data/model/response/product_model.dart';
import 'package:mockito/annotations.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';

import 'store_local_data_source_test.mocks.dart';

@GenerateMocks(
  [
    StoreLocalDataSource,
  ],
)
void main() {
  late MockStoreLocalDataSource mockDataSource;
  final tCategoryModel = CategoryModel(listProductCategory: []);
  final tProductModel = ProductModel(product: []);
  setUp(
    () {
      mockDataSource = MockStoreLocalDataSource();
    },
  );

  group(
    'group for test implementation responses',
    () {
      test(
        'should be response CategoryModel',
        () async {
          //arrange
          when(mockDataSource.getAllCategory())
              .thenAnswer((_) async => tCategoryModel);
          //act
          final response = await mockDataSource.getAllCategory();
          //expect
          expect(response, tCategoryModel);
        },
      );

      test(
        'should be response ProductModel',
        () async {
          //arrange
          when(mockDataSource.getFavoritesProduct())
              .thenAnswer((_) async => tProductModel);
          //act
          final response = await mockDataSource.getFavoritesProduct();
          //expect
          expect(response, tProductModel);
        },
      );

      test(
        'should be response true',
        () async {
          //arrange
          when(mockDataSource.saveCategory(tCategoryModel))
              .thenAnswer((_) async => true);
          //act
          final response = await mockDataSource.saveCategory(tCategoryModel);
          //expect
          expect(response, true);
        },
      );

      test(
        'should be response false',
        () async {
          //arrange
          when(mockDataSource.saveCategory(tCategoryModel))
              .thenAnswer((_) async => false);
          //act
          final response = await mockDataSource.saveCategory(tCategoryModel);
          //expect
          expect(response, false);
        },
      );

      test(
        'should be response true',
        () async {
          //arrange
          when(mockDataSource.saveFavoriteProduct(tProductModel))
              .thenAnswer((_) async => true);
          //act
          final response =
              await mockDataSource.saveFavoriteProduct(tProductModel);
          //expect
          expect(response, true);
        },
      );

      test(
        'should be response false',
        () async {
          //arrange
          when(mockDataSource.saveFavoriteProduct(tProductModel))
              .thenAnswer((_) async => false);
          //act
          final response =
              await mockDataSource.saveFavoriteProduct(tProductModel);
          //expect
          expect(response, false);
        },
      );
    },
  );
}
