// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'work_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

WorkModel _$WorkModelFromJson(Map<String, dynamic> json) => WorkModel(
      json['restaurant_id'] as int,
      json['chef_id'] as int,
    );

Map<String, dynamic> _$WorkModelToJson(WorkModel instance) => <String, dynamic>{
      'restaurant_id': instance.restaurantId,
      'chef_id': instance.chefId,
    };
