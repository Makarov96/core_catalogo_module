import 'package:core_catalogo_module/core/error/exception.dart';
import 'package:core_catalogo_module/core/usecase/use_case.dart';
import 'package:core_catalogo_module/feature/data/model/response/product_model.dart';
import 'package:core_catalogo_module/feature/domain/repositories/store_repository.dart';
import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:injectable/injectable.dart';

@lazySingleton
class SearchByTagId implements UseCase<ProductModel, SearchByParams> {
  SearchByTagId(this._storeRepository);
  final StoreRepository _storeRepository;

  @override
  Future<Either<GenericException, ProductModel>> call(
          SearchByParams params) async =>
      _storeRepository.searchByTagProduct(tagId: params.tagId);
}

class SearchByParams extends Equatable {
  const SearchByParams(this.tagId);
  final int tagId;

  @override
  List<Object?> get props => [tagId];
}
