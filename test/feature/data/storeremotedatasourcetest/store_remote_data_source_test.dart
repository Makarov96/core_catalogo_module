import 'package:core_catalogo_module/core/error/exception.dart';
import 'package:core_catalogo_module/feature/data/datasource/storeremotedatasource/store_remote_data_source.dart';
import 'package:core_catalogo_module/feature/data/model/request/set_favorite_request_model.dart';
import 'package:core_catalogo_module/feature/data/model/response/category_model.dart';
import 'package:core_catalogo_module/feature/data/model/response/product_model.dart';
import 'package:core_catalogo_module/feature/data/model/response/update_product_response.dart';
import 'package:mockito/annotations.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';

import 'store_remote_data_source_test.mocks.dart';

@GenerateMocks(
  [
    StoreRemoteDataSource,
  ],
)
void main() {
  late MockStoreRemoteDataSource mockDatasource;
  var tCategoryModel = CategoryModel(listProductCategory: []);
  var tUpdateProductByModel = UpdateProductByModel(ReponseModel(3, true));
  var tSetFavoriteRequestModel = SetFavoriteRequestModel(
    setBoolValue: SetBoolValue(isFavorite: true),
    setPkColumn: SetPkColumn(id: 3),
  );
  var tProductModel = ProductModel(
    product: [],
  );
  setUp(() {
    mockDatasource = MockStoreRemoteDataSource();
  });

  group(
    'test group reomote data source',
    () {
      test(
        'should be response category model',
        () async {
          //arrange
          when(mockDatasource.getAllCategory())
              .thenAnswer((realInvocation) async => tCategoryModel);
          //act
          final response = await mockDatasource.getAllCategory();
          //expect
          expect(response, tCategoryModel);
        },
      );

      test(
        'should be response SetFavoriteRequestModel',
        () async {
          //arrange
          when(mockDatasource.favoriteProduct(tSetFavoriteRequestModel))
              .thenAnswer((realInvocation) async => tUpdateProductByModel);
          //act
          final response =
              await mockDatasource.favoriteProduct(tSetFavoriteRequestModel);
          //expect
          expect(response, tUpdateProductByModel);
        },
      );

      test(
        'should be response a ServerException from favoriteProduct',
        () async {
          //arrange
          when(mockDatasource.favoriteProduct(tSetFavoriteRequestModel))
              .thenAnswer((_) => throw ServerException());
          //act

          //expec
          expect(() => mockDatasource.favoriteProduct(tSetFavoriteRequestModel),
              throwsA(isA<ServerException>()));
        },
      );

      test('should be response ProductModel', () async {
        //arrange
        when(mockDatasource.searchByIsFavoriteProduct())
            .thenAnswer((realInvocation) async => tProductModel);
        //act
        final response = await mockDatasource.searchByIsFavoriteProduct();
        //expec
        expect(response, tProductModel);
      });

      test(
        'should be resp a ServerException from searchByIsFavoriteProduct',
        () async {
          //arrange
          when(mockDatasource.searchByIsFavoriteProduct())
              .thenAnswer((_) => throw ServerException());
          //act

          //expec
          expect(() => mockDatasource.searchByIsFavoriteProduct(),
              throwsA(isA<ServerException>()));
        },
      );
    },
  );
}
