import 'package:equatable/equatable.dart';

class Category extends Equatable {
  late final List<ProductCategoryEntity> listProductCategory;
  @override
  List<Object?> get props => [listProductCategory];
}

class ProductCategoryEntity extends Equatable {
  late final String description;
  late final num id;

  @override
  List<Object?> get props => [id, description];
}
