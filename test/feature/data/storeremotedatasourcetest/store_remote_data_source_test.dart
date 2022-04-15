import 'package:core_catalogo_module/feature/data/datasource/storelocaldatasource/store_local_data_source.dart';
import 'package:core_catalogo_module/feature/data/datasource/storeremotedatasource/store_remote_data_source.dart';
import 'package:core_catalogo_module/feature/data/model/response/category_model.dart';
import 'package:mockito/annotations.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';

import 'store_remote_data_source_test.mocks.dart';

@GenerateMocks(
  [
    StoreLocalDataSource,
    StoreRemoteDataSource,
  ],
)
void main() {
  late MockStoreLocalDataSource mockDataSource;
  final tCategoryModel = CategoryModel(listProductCategory: []);
  setUp(
    () {
      mockDataSource = MockStoreLocalDataSource();
    },
  );

  group(
    'group for test implementation responses',
    () {
      test(
        'should be a array of category',
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
    },
  );
}
