import 'package:core_catalogo_module/core/error/exception.dart';
import 'package:core_catalogo_module/core/usecase/use_case.dart';
import 'package:core_catalogo_module/feature/data/model/request/set_favorite_request_model.dart';
import 'package:core_catalogo_module/feature/domain/repositories/store_repository.dart';
import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:injectable/injectable.dart';

@lazySingleton
class SetFavoriteProduct implements UseCase<bool, FavoriteParams> {
  SetFavoriteProduct(this._storeRepository);
  final StoreRepository _storeRepository;

  @override
  Future<Either<GenericException, bool>> call(
          FavoriteParams params) async =>
      _storeRepository.favoriteProduct(
        SetFavoriteRequestModel(
          setBoolValue: SetBoolValue(isFavorite: params.isFavorite),
          setPkColumn: SetPkColumn(id: params.productId),
        ),
      );
}

class FavoriteParams extends Equatable {
  const FavoriteParams(this.isFavorite, this.productId);
  final bool isFavorite;
  final int productId;
  @override
  List<Object?> get props => [];
}
