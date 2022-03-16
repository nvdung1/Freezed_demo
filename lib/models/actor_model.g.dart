// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file:  non_constant_identifier_names
part of 'actor_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ActorModel _$$_ActorModelFromJson(Map<String, dynamic> json) =>
    _$_ActorModel(
      json['adult'] as bool?,
      json['gender'] as int?,
      json['id'] as int?,
      json['known_for_department'] as String?,
      json['name'] as String?,
      json['original_name'] as String?,
      (json['popularity'] as num?)?.toDouble(),
      json['profile_path'] as String?,
      json['cast_id'] as int?,
      json['character'] as String?,
      json['credit_id'] as String?,
      json['order'] as int?,
    );

Map<String, dynamic> _$$_ActorModelToJson(_$_ActorModel instance) =>
    <String, dynamic>{
      'adult': instance.adult,
      'gender': instance.gender,
      'id': instance.id,
      'known_for_department': instance.known_for_department,
      'name': instance.name,
      'original_name': instance.original_name,
      'popularity': instance.popularity,
      'profile_path': instance.profile_path,
      'cast_id': instance.cast_id,
      'character': instance.character,
      'credit_id': instance.credit_id,
      'order': instance.order,
    };
