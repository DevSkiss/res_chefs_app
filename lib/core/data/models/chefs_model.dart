import 'package:json_annotation/json_annotation.dart';

part 'chefs_model.g.dart';

@JsonSerializable()
class ChefsModel {
  ChefsModel(
    this.id,
    this.firstName,
    this.lastName,
    this.address,
    this.city,
    this.state,
    this.country,
    this.email,
  );

  factory ChefsModel.fromJson(Map<String, dynamic> json) =>
      _$ChefsModelFromJson(json);
  Map<String, dynamic> toJson() => _$ChefsModelToJson(this);

  @JsonKey(name: 'id')
  final int id;

  @JsonKey(name: 'first_name')
  final String firstName;

  @JsonKey(name: 'last_name')
  final String lastName;

  @JsonKey(name: 'address')
  final String address;

  @JsonKey(name: 'city')
  final String city;

  @JsonKey(name: 'state')
  final String state;

  @JsonKey(name: 'country')
  final String country;

  @JsonKey(name: 'email')
  final String email;
}
