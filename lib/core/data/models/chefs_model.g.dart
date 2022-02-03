// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'chefs_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ChefsModel _$ChefsModelFromJson(Map<String, dynamic> json) => ChefsModel(
      json['id'] as int,
      json['first_name'] as String,
      json['last_name'] as String,
      json['address'] as String,
      json['city'] as String,
      json['state'] as String,
      json['country'] as String,
      json['email'] as String,
    );

Map<String, dynamic> _$ChefsModelToJson(ChefsModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'first_name': instance.firstName,
      'last_name': instance.lastName,
      'address': instance.address,
      'city': instance.city,
      'state': instance.state,
      'country': instance.country,
      'email': instance.email,
    };
