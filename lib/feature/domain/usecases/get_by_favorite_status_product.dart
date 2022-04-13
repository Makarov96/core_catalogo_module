import 'package:core_catalogo_module/core/error/exception.dart';
import 'package:core_catalogo_module/core/usecase/use_case.dart';
import 'package:core_catalogo_module/feature/data/model/response/product_model.dart';
import 'package:core_catalogo_module/feature/domain/repositories/store_repository.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

@lazySingleton
class GetProductByFavoriteStatusProduct implements UseCase<ProductModel, NoParams> {
  GetProductByFavoriteStatusProduct(this._storeRepository);
  final StoreRepository _storeRepository;
  @override
  Future<Either<GenericException, ProductModel>> call(NoParams params) async =>
      _storeRepository.searchByIsFavoriteProduct();
}
