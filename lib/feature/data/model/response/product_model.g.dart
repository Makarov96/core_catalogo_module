// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ProductModel _$ProductModelFromJson(Map<String, dynamic> json) => ProductModel(
      product: (json['product'] as List<dynamic>)
          .map((e) => Product.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$ProductModelToJson(ProductModel instance) =>
    <String, dynamic>{
      'product': instance.product.map((e) => e.toJson()).toList(),
    };

Product _$ProductFromJson(Map<String, dynamic> json) => Product(
      isFavorite: json['is_favorite'] as bool,
      productCategory: json['product_category'] as num,
      productDescription: json['product_description'] as String,
      productImage: json['product_image'] as String,
      productName: json['product_name'] as String,
      productPrice: json['product_price'] as String,
      quantityAvailable: json['quantity_available'] as num,
      urlMoreDetail: json['url_more_detail'] as String,
      id: json['id'] as int,
    );

Map<String, dynamic> _$ProductToJson(Product instance) => <String, dynamic>{
      'is_favorite': instance.isFavorite,
      'product_category': instance.productCategory,
      'product_description': instance.productDescription,
      'product_image': instance.productImage,
      'product_name': instance.productName,
      'product_price': instance.productPrice,
      'quantity_available': instance.quantityAvailable,
      'url_more_detail': instance.urlMoreDetail,
      'id': instance.id,
    };
