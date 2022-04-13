// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'set_favorite_request_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SetFavoriteRequestModel _$SetFavoriteRequestModelFromJson(
        Map<String, dynamic> json) =>
    SetFavoriteRequestModel(
      setBoolValue: SetBoolValue.fromJson(json['_set'] as Map<String, dynamic>),
      setPkColumn:
          SetPkColumn.fromJson(json['pk_columns'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$SetFavoriteRequestModelToJson(
        SetFavoriteRequestModel instance) =>
    <String, dynamic>{
      '_set': instance.setBoolValue.toJson(),
      'pk_columns': instance.setPkColumn.toJson(),
    };

SetBoolValue _$SetBoolValueFromJson(Map<String, dynamic> json) => SetBoolValue(
      isFavorite: json['is_favorite'] as bool,
    );

Map<String, dynamic> _$SetBoolValueToJson(SetBoolValue instance) =>
    <String, dynamic>{
      'is_favorite': instance.isFavorite,
    };

SetPkColumn _$SetPkColumnFromJson(Map<String, dynamic> json) => SetPkColumn(
      id: json['id'] as int,
    );

Map<String, dynamic> _$SetPkColumnToJson(SetPkColumn instance) =>
    <String, dynamic>{
      'id': instance.id,
    };
