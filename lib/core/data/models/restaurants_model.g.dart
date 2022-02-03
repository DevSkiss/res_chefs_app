// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'restaurants_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

RestaurantsModel _$RestaurantsModelFromJson(Map<String, dynamic> json) =>
    RestaurantsModel(
      json['id'] as int,
      json['name'] as String,
      json['address1'] as String,
      json['address2'] as String,
      json['city'] as String,
      json['state'] as String,
      json['country'] as String,
      json['phone'] as String,
    );

Map<String, dynamic> _$RestaurantsModelToJson(RestaurantsModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'address1': instance.address1,
      'address2': instance.address2,
      'city': instance.city,
      'state': instance.state,
      'country': instance.country,
      'phone': instance.phone,
    };
