// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target
// ignore_for_file:  non_constant_identifier_names
part of 'movie_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

MovieModel _$MovieModelFromJson(Map<String, dynamic> json) {
  return _MovieModel.fromJson(json);
}

/// @nodoc
class _$MovieModelTearOff {
  const _$MovieModelTearOff();

  _MovieModel call(
      bool? adult,
      String? backdrop_path,
      @JsonKey(defaultValue: []) List<int>? genre_ids,
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
      int? vote_count) {
    return _MovieModel(
      adult,
      backdrop_path,
      genre_ids,
      id,
      original_language,
      original_title,
      overview,
      popularity,
      poster_path,
      release_date,
      title,
      video,
      vote_average,
      vote_count,
    );
  }

  MovieModel fromJson(Map<String, Object?> json) {
    return MovieModel.fromJson(json);
  }
}

/// @nodoc
const $MovieModel = _$MovieModelTearOff();

/// @nodoc
mixin _$MovieModel {
  bool? get adult => throw _privateConstructorUsedError;
  String? get backdrop_path => throw _privateConstructorUsedError;
  @JsonKey(defaultValue: [])
  List<int>? get genre_ids =>
      throw _privateConstructorUsedError; // List<int>? genreIds,
  int? get id => throw _privateConstructorUsedError;
  String? get original_language => throw _privateConstructorUsedError;
  String? get original_title => throw _privateConstructorUsedError;
  String? get overview => throw _privateConstructorUsedError;
  double? get popularity => throw _privateConstructorUsedError;
  String? get poster_path => throw _privateConstructorUsedError;
  String? get release_date => throw _privateConstructorUsedError;
  String? get title => throw _privateConstructorUsedError;
  bool? get video => throw _privateConstructorUsedError;
  dynamic get vote_average => throw _privateConstructorUsedError;
  int? get vote_count => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MovieModelCopyWith<MovieModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MovieModelCopyWith<$Res> {
  factory $MovieModelCopyWith(
          MovieModel value, $Res Function(MovieModel) then) =
      _$MovieModelCopyWithImpl<$Res>;
  $Res call(
      {bool? adult,
      String? backdrop_path,
      @JsonKey(defaultValue: []) List<int>? genre_ids,
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
      int? vote_count});
}

/// @nodoc
class _$MovieModelCopyWithImpl<$Res> implements $MovieModelCopyWith<$Res> {
  _$MovieModelCopyWithImpl(this._value, this._then);

  final MovieModel _value;
  // ignore: unused_field
  final $Res Function(MovieModel) _then;

  @override
  $Res call({
    Object? adult = freezed,
    Object? backdrop_path = freezed,
    Object? genre_ids = freezed,
    Object? id = freezed,
    Object? original_language = freezed,
    Object? original_title = freezed,
    Object? overview = freezed,
    Object? popularity = freezed,
    Object? poster_path = freezed,
    Object? release_date = freezed,
    Object? title = freezed,
    Object? video = freezed,
    Object? vote_average = freezed,
    Object? vote_count = freezed,
  }) {
    return _then(_value.copyWith(
      adult: adult == freezed
          ? _value.adult
          : adult // ignore: cast_nullable_to_non_nullable
              as bool?,
      backdrop_path: backdrop_path == freezed
          ? _value.backdrop_path
          : backdrop_path // ignore: cast_nullable_to_non_nullable
              as String?,
      genre_ids: genre_ids == freezed
          ? _value.genre_ids
          : genre_ids // ignore: cast_nullable_to_non_nullable
              as List<int>?,
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      original_language: original_language == freezed
          ? _value.original_language
          : original_language // ignore: cast_nullable_to_non_nullable
              as String?,
      original_title: original_title == freezed
          ? _value.original_title
          : original_title // ignore: cast_nullable_to_non_nullable
              as String?,
      overview: overview == freezed
          ? _value.overview
          : overview // ignore: cast_nullable_to_non_nullable
              as String?,
      popularity: popularity == freezed
          ? _value.popularity
          : popularity // ignore: cast_nullable_to_non_nullable
              as double?,
      poster_path: poster_path == freezed
          ? _value.poster_path
          : poster_path // ignore: cast_nullable_to_non_nullable
              as String?,
      release_date: release_date == freezed
          ? _value.release_date
          : release_date // ignore: cast_nullable_to_non_nullable
              as String?,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      video: video == freezed
          ? _value.video
          : video // ignore: cast_nullable_to_non_nullable
              as bool?,
      vote_average: vote_average == freezed
          ? _value.vote_average
          : vote_average // ignore: cast_nullable_to_non_nullable
              as dynamic,
      vote_count: vote_count == freezed
          ? _value.vote_count
          : vote_count // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
abstract class _$MovieModelCopyWith<$Res> implements $MovieModelCopyWith<$Res> {
  factory _$MovieModelCopyWith(
          _MovieModel value, $Res Function(_MovieModel) then) =
      __$MovieModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {bool? adult,
      String? backdrop_path,
      @JsonKey(defaultValue: []) List<int>? genre_ids,
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
      int? vote_count});
}

/// @nodoc
class __$MovieModelCopyWithImpl<$Res> extends _$MovieModelCopyWithImpl<$Res>
    implements _$MovieModelCopyWith<$Res> {
  __$MovieModelCopyWithImpl(
      _MovieModel _value, $Res Function(_MovieModel) _then)
      : super(_value, (v) => _then(v as _MovieModel));

  @override
  _MovieModel get _value => super._value as _MovieModel;

  @override
  $Res call({
    Object? adult = freezed,
    Object? backdrop_path = freezed,
    Object? genre_ids = freezed,
    Object? id = freezed,
    Object? original_language = freezed,
    Object? original_title = freezed,
    Object? overview = freezed,
    Object? popularity = freezed,
    Object? poster_path = freezed,
    Object? release_date = freezed,
    Object? title = freezed,
    Object? video = freezed,
    Object? vote_average = freezed,
    Object? vote_count = freezed,
  }) {
    return _then(_MovieModel(
      adult == freezed
          ? _value.adult
          : adult // ignore: cast_nullable_to_non_nullable
              as bool?,
      backdrop_path == freezed
          ? _value.backdrop_path
          : backdrop_path // ignore: cast_nullable_to_non_nullable
              as String?,
      genre_ids == freezed
          ? _value.genre_ids
          : genre_ids // ignore: cast_nullable_to_non_nullable
              as List<int>?,
      id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      original_language == freezed
          ? _value.original_language
          : original_language // ignore: cast_nullable_to_non_nullable
              as String?,
      original_title == freezed
          ? _value.original_title
          : original_title // ignore: cast_nullable_to_non_nullable
              as String?,
      overview == freezed
          ? _value.overview
          : overview // ignore: cast_nullable_to_non_nullable
              as String?,
      popularity == freezed
          ? _value.popularity
          : popularity // ignore: cast_nullable_to_non_nullable
              as double?,
      poster_path == freezed
          ? _value.poster_path
          : poster_path // ignore: cast_nullable_to_non_nullable
              as String?,
      release_date == freezed
          ? _value.release_date
          : release_date // ignore: cast_nullable_to_non_nullable
              as String?,
      title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      video == freezed
          ? _value.video
          : video // ignore: cast_nullable_to_non_nullable
              as bool?,
      vote_average == freezed
          ? _value.vote_average
          : vote_average // ignore: cast_nullable_to_non_nullable
              as dynamic,
      vote_count == freezed
          ? _value.vote_count
          : vote_count // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$_MovieModel implements _MovieModel {
  _$_MovieModel(
      this.adult,
      this.backdrop_path,
      @JsonKey(defaultValue: []) this.genre_ids,
      this.id,
      this.original_language,
      this.original_title,
      this.overview,
      this.popularity,
      this.poster_path,
      this.release_date,
      this.title,
      this.video,
      this.vote_average,
      this.vote_count);

  factory _$_MovieModel.fromJson(Map<String, dynamic> json) =>
      _$$_MovieModelFromJson(json);

  @override
  final bool? adult;
  @override
  final String? backdrop_path;
  @override
  @JsonKey(defaultValue: [])
  final List<int>? genre_ids;
  @override // List<int>? genreIds,
  final int? id;
  @override
  final String? original_language;
  @override
  final String? original_title;
  @override
  final String? overview;
  @override
  final double? popularity;
  @override
  final String? poster_path;
  @override
  final String? release_date;
  @override
  final String? title;
  @override
  final bool? video;
  @override
  final dynamic vote_average;
  @override
  final int? vote_count;

  @override
  String toString() {
    return 'MovieModel(adult: $adult, backdrop_path: $backdrop_path, genre_ids: $genre_ids, id: $id, original_language: $original_language, original_title: $original_title, overview: $overview, popularity: $popularity, poster_path: $poster_path, release_date: $release_date, title: $title, video: $video, vote_average: $vote_average, vote_count: $vote_count)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _MovieModel &&
            const DeepCollectionEquality().equals(other.adult, adult) &&
            const DeepCollectionEquality()
                .equals(other.backdrop_path, backdrop_path) &&
            const DeepCollectionEquality().equals(other.genre_ids, genre_ids) &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality()
                .equals(other.original_language, original_language) &&
            const DeepCollectionEquality()
                .equals(other.original_title, original_title) &&
            const DeepCollectionEquality().equals(other.overview, overview) &&
            const DeepCollectionEquality()
                .equals(other.popularity, popularity) &&
            const DeepCollectionEquality()
                .equals(other.poster_path, poster_path) &&
            const DeepCollectionEquality()
                .equals(other.release_date, release_date) &&
            const DeepCollectionEquality().equals(other.title, title) &&
            const DeepCollectionEquality().equals(other.video, video) &&
            const DeepCollectionEquality()
                .equals(other.vote_average, vote_average) &&
            const DeepCollectionEquality()
                .equals(other.vote_count, vote_count));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(adult),
      const DeepCollectionEquality().hash(backdrop_path),
      const DeepCollectionEquality().hash(genre_ids),
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(original_language),
      const DeepCollectionEquality().hash(original_title),
      const DeepCollectionEquality().hash(overview),
      const DeepCollectionEquality().hash(popularity),
      const DeepCollectionEquality().hash(poster_path),
      const DeepCollectionEquality().hash(release_date),
      const DeepCollectionEquality().hash(title),
      const DeepCollectionEquality().hash(video),
      const DeepCollectionEquality().hash(vote_average),
      const DeepCollectionEquality().hash(vote_count));

  @JsonKey(ignore: true)
  @override
  _$MovieModelCopyWith<_MovieModel> get copyWith =>
      __$MovieModelCopyWithImpl<_MovieModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_MovieModelToJson(this);
  }
}

abstract class _MovieModel implements MovieModel {
  factory _MovieModel(
      bool? adult,
      String? backdrop_path,
      @JsonKey(defaultValue: []) List<int>? genre_ids,
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
      int? vote_count) = _$_MovieModel;

  factory _MovieModel.fromJson(Map<String, dynamic> json) =
      _$_MovieModel.fromJson;

  @override
  bool? get adult;
  @override
  String? get backdrop_path;
  @override
  @JsonKey(defaultValue: [])
  List<int>? get genre_ids;
  @override // List<int>? genreIds,
  int? get id;
  @override
  String? get original_language;
  @override
  String? get original_title;
  @override
  String? get overview;
  @override
  double? get popularity;
  @override
  String? get poster_path;
  @override
  String? get release_date;
  @override
  String? get title;
  @override
  bool? get video;
  @override
  dynamic get vote_average;
  @override
  int? get vote_count;
  @override
  @JsonKey(ignore: true)
  _$MovieModelCopyWith<_MovieModel> get copyWith =>
      throw _privateConstructorUsedError;
}
