import 'package:json_annotation/json_annotation.dart';
part 'product_model.g.dart';

@JsonSerializable(explicitToJson: true, includeIfNull: true)
class ProductModel {
  ProductModel({
    required this.product,
  });

  factory ProductModel.fromJson(Map<String, dynamic> json) =>
      _$ProductModelFromJson(json);
  @JsonKey(name: 'product')
  final List<Product> product;

  Map<String, dynamic> toJson() => _$ProductModelToJson(this);
}

@JsonSerializable(explicitToJson: true, includeIfNull: true)
class Product {
  Product({
    required this.isFavorite,
    required this.productCategory,
    required this.productDescription,
    required this.productImage,
    required this.productName,
    required this.productPrice,
    required this.quantityAvailable,
    required this.urlMoreDetail,
    required this.id,
  });

  factory Product.fromJson(Map<String, dynamic> json) =>
      _$ProductFromJson(json);
  @JsonKey(name: 'is_favorite')
  final bool isFavorite;
  @JsonKey(name: 'product_category')
  final num productCategory;
  @JsonKey(name: 'product_description')
  final String productDescription;
  @JsonKey(name: 'product_image')
  final String productImage;
  @JsonKey(name: 'product_name')
  final String productName;
  @JsonKey(name: 'product_price')
  final String productPrice;
  @JsonKey(name: 'quantity_available')
  final num quantityAvailable;
  @JsonKey(name: 'url_more_detail')
  final String urlMoreDetail;
  @JsonKey(name: 'id')
  final int id;

  Map<String, dynamic> toJson() => _$ProductToJson(this);
}
