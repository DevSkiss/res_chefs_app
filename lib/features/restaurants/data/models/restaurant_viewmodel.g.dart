// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'restaurant_viewmodel.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

RestaurantViewModel _$RestaurantViewModelFromJson(Map<String, dynamic> json) =>
    RestaurantViewModel(
      json['name'] as String,
      json['address1'] as String,
      json['address2'] as String,
      json['city'] as String,
      json['state'] as String,
      json['country'] as String,
      json['phone'] as String,
      (json['chefs'] as List<dynamic>)
          .map((e) => ChefsModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$RestaurantViewModelToJson(
        RestaurantViewModel instance) =>
    <String, dynamic>{
      'name': instance.name,
      'address1': instance.address1,
      'address2': instance.address2,
      'city': instance.city,
      'state': instance.state,
      'country': instance.country,
      'phone': instance.phone,
      'chefs': instance.chefs,
    };
