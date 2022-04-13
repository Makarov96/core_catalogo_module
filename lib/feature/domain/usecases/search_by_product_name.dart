import 'package:core_catalogo_module/core/error/exception.dart';
import 'package:core_catalogo_module/core/usecase/use_case.dart';
import 'package:core_catalogo_module/feature/data/model/response/product_model.dart';
import 'package:core_catalogo_module/feature/domain/repositories/store_repository.dart';
import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:injectable/injectable.dart';

@lazySingleton
class SearchByProductName
    implements UseCase<ProductModel, SearchProductsParams> {
  SearchByProductName(this._storeRepository);
  final StoreRepository _storeRepository;

  @override
  Future<Either<GenericException, ProductModel>> call(
          SearchProductsParams params) async =>
      _storeRepository.searchProductByName(
        productName: params.prodcuteName,
      );
}

class SearchProductsParams extends Equatable {
  const SearchProductsParams(this.prodcuteName);
  final String prodcuteName;

  @override
  List<Object?> get props => [prodcuteName];
}
