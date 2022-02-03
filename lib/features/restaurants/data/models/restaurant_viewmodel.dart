import 'package:json_annotation/json_annotation.dart';
import 'package:res_chefs_app/core/data/models/chefs_model.dart';

part 'restaurant_viewmodel.g.dart';

@JsonSerializable()
class RestaurantViewModel {
  RestaurantViewModel(
    this.name,
    this.address1,
    this.address2,
    this.city,
    this.state,
    this.country,
    this.phone,
    this.chefs,
  );

  factory RestaurantViewModel.fromJson(Map<String, dynamic> json) =>
      _$RestaurantViewModelFromJson(json);
  Map<String, dynamic> toJson() => _$RestaurantViewModelToJson(this);

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

  @JsonKey(name: 'chefs')
  final List<ChefsModel> chefs;
}
