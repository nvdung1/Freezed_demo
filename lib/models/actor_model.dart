// ignore_for_file: invalid_annotation_target, non_constant_identifier_names

import 'package:freezed_annotation/freezed_annotation.dart';

part 'actor_model.freezed.dart';
part 'actor_model.g.dart';

@freezed
class ActorModel with _$ActorModel{
  @JsonSerializable(explicitToJson: true)

  factory ActorModel(
  bool? adult,
  int? gender,
  int? id,
  String? known_for_department,
  String? name,
  String? original_name,
  double? popularity,
  String? profile_path,
  int? cast_id,
  String? character,
  String? credit_id,
  int? order,)=_ActorModel;
  factory ActorModel.fromJson(Map<String, dynamic> json) => _$ActorModelFromJson(json);
}