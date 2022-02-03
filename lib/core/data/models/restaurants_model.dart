import 'package:json_annotation/json_annotation.dart';

part 'restaurants_model.g.dart';

@JsonSerializable()
class RestaurantsModel {
  RestaurantsModel(
    this.id,
    this.name,
    this.address1,
    this.address2,
    this.city,
    this.state,
    this.country,
    this.phone,
  );

  factory RestaurantsModel.fromJson(Map<String, dynamic> json) =>
      _$RestaurantsModelFromJson(json);
  Map<String, dynamic> toJson() => _$RestaurantsModelToJson(this);

  @JsonKey(name: 'id')
  final int id;

  @JsonKey(name: 'name')
  final String name;

  @JsonKey(name: 'address1')
  final String address1;

  @JsonKey(name: 'address2')
  final String address2;

  @JsonKey(name: 'city')
  final String city;

  @JsonKey(name: 'state')
  final String state;

  @JsonKey(name: 'country')
  final String country;

  @JsonKey(name: 'phone')
  final String phone;
}
