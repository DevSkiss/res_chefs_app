import 'package:json_annotation/json_annotation.dart';

part 'work_model.g.dart';

@JsonSerializable()
class WorkModel {
  WorkModel(
    this.restaurantId,
    this.chefId,
  );

  factory WorkModel.fromJson(Map<String, dynamic> json) =>
      _$WorkModelFromJson(json);
  Map<String, dynamic> toJson() => _$WorkModelToJson(this);

  @JsonKey(name: 'restaurant_id')
  final int restaurantId;

  @JsonKey(name: 'chef_id')
  final int chefId;
}
