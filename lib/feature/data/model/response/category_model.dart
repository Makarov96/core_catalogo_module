import 'package:json_annotation/json_annotation.dart';
part 'category_model.g.dart';

@JsonSerializable(explicitToJson: true, includeIfNull: true)
class CategoryModel {
  CategoryModel({
    required this.listProductCategory,
  });

  factory CategoryModel.fromJson(Map<String, dynamic> json) =>
      _$CategoryModelFromJson(json);
  @JsonKey(name: 'product_category')
  final List<ProductCategory> listProductCategory;

  Map<String, dynamic> toJson() => _$CategoryModelToJson(this);
}

@JsonSerializable(explicitToJson: true, includeIfNull: true)
class ProductCategory {
  ProductCategory(this.description, this.id);
  factory ProductCategory.fromJson(Map<String, dynamic> json) =>
      _$ProductCategoryFromJson(json);
  final String description;
  final num id;

  Map<String, dynamic> toJson() => _$ProductCategoryToJson(this);
}
