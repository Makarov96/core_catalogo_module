import 'package:json_annotation/json_annotation.dart';
part 'set_favorite_request_model.g.dart';

@JsonSerializable(explicitToJson: true, includeIfNull: true)
class SetFavoriteRequestModel {
  SetFavoriteRequestModel({
    required this.setBoolValue,
    required this.setPkColumn,
  });

  @JsonKey(name: '_set')
  final SetBoolValue setBoolValue;
  @JsonKey(name: 'pk_columns')
  final SetPkColumn setPkColumn;

  factory SetFavoriteRequestModel.fromJson(Map<String, dynamic> json) =>
      _$SetFavoriteRequestModelFromJson(json);
  Map<String, dynamic> toJson() => _$SetFavoriteRequestModelToJson(this);
}

@JsonSerializable(explicitToJson: true, includeIfNull: true)
class SetBoolValue {
  SetBoolValue({required this.isFavorite});
    @JsonKey(name: 'is_favorite')
  final bool isFavorite;

  factory SetBoolValue.fromJson(Map<String, dynamic> json) =>
      _$SetBoolValueFromJson(json);
  Map<String, dynamic> toJson() => _$SetBoolValueToJson(this);
}

@JsonSerializable(explicitToJson: true, includeIfNull: true)
class SetPkColumn {
  SetPkColumn({required this.id});
  final int id;

  factory SetPkColumn.fromJson(Map<String, dynamic> json) =>
      _$SetPkColumnFromJson(json);
  Map<String, dynamic> toJson() => _$SetPkColumnToJson(this);
}
