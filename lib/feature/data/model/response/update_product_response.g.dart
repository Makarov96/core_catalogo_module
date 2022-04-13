// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'update_product_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UpdateProductByModel _$UpdateProductByModelFromJson(
        Map<String, dynamic> json) =>
    UpdateProductByModel(
      ReponseModel.fromJson(
          json['update_product_by_pk'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$UpdateProductByModelToJson(
        UpdateProductByModel instance) =>
    <String, dynamic>{
      'update_product_by_pk': instance.reponse.toJson(),
    };

ReponseModel _$ReponseModelFromJson(Map<String, dynamic> json) => ReponseModel(
      json['id'] as num,
      json['is_favorite'] as bool,
    );

Map<String, dynamic> _$ReponseModelToJson(ReponseModel instance) =>
    <String, dynamic>{
      'id': instance.idProduct,
      'is_favorite': instance.isFavorire,
    };
