import 'package:core_catalogo_module/core/error/exception.dart';
import 'package:core_catalogo_module/core/usecase/use_case.dart';
import 'package:core_catalogo_module/feature/data/model/request/set_favorite_request_model.dart';
import 'package:core_catalogo_module/feature/domain/repositories/store_repository.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

@lazySingleton
class SetFavoriteProduct implements UseCase<bool, SetFavoriteRequestModel> {

  SetFavoriteProduct(this._storeRepository);
  final StoreRepository _storeRepository;

  @override
  Future<Either<GenericException, bool>> call(
          SetFavoriteRequestModel params) async =>
      _storeRepository.favoriteProduct(params);
}
