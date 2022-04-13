import 'package:json_annotation/json_annotation.dart';
part 'update_product_response.g.dart';

@JsonSerializable(explicitToJson: true, includeIfNull: true)
class UpdateProductByModel {
  UpdateProductByModel(this.reponse);
  factory UpdateProductByModel.fromJson(Map<String, dynamic> json) =>
      _$UpdateProductByModelFromJson(json);

  @JsonKey(name: 'update_product_by_pk')
  final ReponseModel reponse;

  Map<String, dynamic> toJson() => _$UpdateProductByModelToJson(this);
}

@JsonSerializable(explicitToJson: true, includeIfNull: true)
class ReponseModel {
  ReponseModel(this.idProduct, this.isFavorire);
  factory ReponseModel.fromJson(Map<String, dynamic> json) =>
      _$ReponseModelFromJson(json);
  @JsonKey(name: 'id')
  final num idProduct;
  @JsonKey(name: 'is_favorite')
  final bool isFavorire;

  Map<String, dynamic> toJson() => _$ReponseModelToJson(this);
}
