import 'package:core_catalogo_module/core/error/exception.dart';
import 'package:core_catalogo_module/core/usecase/use_case.dart';
import 'package:core_catalogo_module/feature/data/model/response/product_model.dart';
import 'package:core_catalogo_module/feature/domain/repositories/store_repository.dart';
import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:injectable/injectable.dart';

@lazySingleton
class GetAllProducts implements UseCase<ProductModel, ProductsParams> {

  GetAllProducts(this._storeRepository);
  final StoreRepository _storeRepository;

  @override
  Future<Either<GenericException, ProductModel>> call(
          ProductsParams params) async =>
      _storeRepository.getAllProduct(
          offset: params.offset, limit: params.limit);
}

class ProductsParams extends Equatable {

  const ProductsParams(this.offset, this.limit);
  final int offset;
  final int limit;

  @override
  List<Object?> get props => [offset, limit];
}
