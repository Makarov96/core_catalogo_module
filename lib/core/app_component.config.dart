// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:core_catalogo_module/core/conf/isar_configuration.dart' as _i4;
import 'package:core_catalogo_module/core/helper/helper_module.dart' as _i17;
import 'package:core_catalogo_module/core/helper/isar_helper.dart' as _i5;
import 'package:core_catalogo_module/core/network/networ_info.dart' as _i6;
import 'package:core_catalogo_module/feature/data/datasource/storelocaldatasource/store_local_data_source.dart'
    as _i7;
import 'package:core_catalogo_module/feature/data/datasource/storeremotedatasource/store_remote_data_source.dart'
    as _i8;
import 'package:core_catalogo_module/feature/data/repository/store_usecase_repository.dart'
    as _i10;
import 'package:core_catalogo_module/feature/domain/repositories/store_repository.dart'
    as _i9;
import 'package:core_catalogo_module/feature/domain/usecases/get_all_product.dart'
    as _i11;
import 'package:core_catalogo_module/feature/domain/usecases/get_by_favorite_status_product.dart'
    as _i13;
import 'package:core_catalogo_module/feature/domain/usecases/get_category_use_case.dart'
    as _i12;
import 'package:core_catalogo_module/feature/domain/usecases/search_by_product_name.dart'
    as _i14;
import 'package:core_catalogo_module/feature/domain/usecases/search_by_tag_id.dart'
    as _i15;
import 'package:core_catalogo_module/feature/domain/usecases/set_favorite_product.dart'
    as _i16;
import 'package:get_it/get_it.dart' as _i1;
import 'package:http/http.dart' as _i3;
import 'package:injectable/injectable.dart'
    as _i2; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
_i1.GetIt $storeInitGetIt(_i1.GetIt get,
    {String? environment, _i2.EnvironmentFilter? environmentFilter}) {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  final helperModule = _$HelperModule();
  gh.lazySingleton<_i3.Client>(() => helperModule.httpClient);
  gh.lazySingleton<_i4.IsarConfiguration>(() => _i4.IsarConfiguration());
  gh.lazySingleton<_i5.IsarHelper>(() => helperModule.isarHelper);
  gh.factory<_i6.NetworkInfo>(() => _i6.NetworkInfoImpl());
  gh.factory<_i7.StoreLocalDataSource>(
      () => _i7.StoreRepositoryLocalDataSource());
  gh.factory<_i8.StoreRemoteDataSource>(
      () => _i8.StoreRepositoryRemoteDataSource());
  gh.factory<_i9.StoreRepository>(() => _i10.StoreRepositoryUseCase(
      networkInfo: get<_i6.NetworkInfo>(),
      storeRemoteDataSource: get<_i8.StoreRemoteDataSource>(),
      storeLocalDataSource: get<_i7.StoreLocalDataSource>()));
  gh.lazySingleton<_i11.GetAllProducts>(
      () => _i11.GetAllProducts(get<_i9.StoreRepository>()));
  gh.lazySingleton<_i12.GetCategoryUseCase>(
      () => _i12.GetCategoryUseCase(get<_i9.StoreRepository>()));
  gh.lazySingleton<_i13.GetProductByFavoriteStatusProduct>(
      () => _i13.GetProductByFavoriteStatusProduct(get<_i9.StoreRepository>()));
  gh.lazySingleton<_i14.SearchByProductName>(
      () => _i14.SearchByProductName(get<_i9.StoreRepository>()));
  gh.lazySingleton<_i15.SearchByTagId>(
      () => _i15.SearchByTagId(get<_i9.StoreRepository>()));
  gh.lazySingleton<_i16.SetFavoriteProduct>(
      () => _i16.SetFavoriteProduct(get<_i9.StoreRepository>()));
  return get;
}

class _$HelperModule extends _i17.HelperModule {
  @override
  _i5.IsarHelper get isarHelper => _i5.IsarHelper();
}
