
// ignore_for_file: invalid_annotation_target, non_constant_identifier_names

import 'package:freezed_annotation/freezed_annotation.dart';

part 'movie_model.freezed.dart';
part 'movie_model.g.dart';

@freezed
class MovieModel with _$MovieModel{
  @JsonSerializable(explicitToJson: true)

  factory MovieModel(
  bool? adult,
  String? backdrop_path,
  @JsonKey(defaultValue: []) List<int>? genre_ids,
  // List<int>? genreIds,
  int? id,
  String? original_language,
  String? original_title,
  String? overview,
  double? popularity,
  String? poster_path,
  String? release_date,
  String? title,
  bool? video,
  dynamic vote_average,
  int? vote_count)= _MovieModel;

  factory MovieModel.fromJson(Map<String,dynamic> json) => _$MovieModelFromJson(json);
}
