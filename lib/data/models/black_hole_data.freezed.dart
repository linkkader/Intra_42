// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'black_hole_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

BlackHoleData _$BlackHoleDataFromJson(Map<String, dynamic> json) {
  return _BlackHoleData.fromJson(json);
}

/// @nodoc
mixin _$BlackHoleData {
  @JsonKey(name: 'is_alumni')
  bool? get isAlumni => throw _privateConstructorUsedError;
  dynamic get agu => throw _privateConstructorUsedError;
  @JsonKey(name: 'agu_date')
  dynamic get aguDate => throw _privateConstructorUsedError;
  @JsonKey(name: 'singularity')
  int? get singularity => throw _privateConstructorUsedError;
  @JsonKey(name: 'bh_date')
  String? get bhDate => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BlackHoleDataCopyWith<BlackHoleData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BlackHoleDataCopyWith<$Res> {
  factory $BlackHoleDataCopyWith(
          BlackHoleData value, $Res Function(BlackHoleData) then) =
      _$BlackHoleDataCopyWithImpl<$Res, BlackHoleData>;
  @useResult
  $Res call(
      {@JsonKey(name: 'is_alumni') bool? isAlumni,
      dynamic agu,
      @JsonKey(name: 'agu_date') dynamic aguDate,
      @JsonKey(name: 'singularity') int? singularity,
      @JsonKey(name: 'bh_date') String? bhDate});
}

/// @nodoc
class _$BlackHoleDataCopyWithImpl<$Res, $Val extends BlackHoleData>
    implements $BlackHoleDataCopyWith<$Res> {
  _$BlackHoleDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isAlumni = freezed,
    Object? agu = null,
    Object? aguDate = null,
    Object? singularity = freezed,
    Object? bhDate = freezed,
  }) {
    return _then(_value.copyWith(
      isAlumni: freezed == isAlumni
          ? _value.isAlumni
          : isAlumni // ignore: cast_nullable_to_non_nullable
              as bool?,
      agu: null == agu
          ? _value.agu
          : agu // ignore: cast_nullable_to_non_nullable
              as dynamic,
      aguDate: null == aguDate
          ? _value.aguDate
          : aguDate // ignore: cast_nullable_to_non_nullable
              as dynamic,
      singularity: freezed == singularity
          ? _value.singularity
          : singularity // ignore: cast_nullable_to_non_nullable
              as int?,
      bhDate: freezed == bhDate
          ? _value.bhDate
          : bhDate // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_BlackHoleDataCopyWith<$Res>
    implements $BlackHoleDataCopyWith<$Res> {
  factory _$$_BlackHoleDataCopyWith(
          _$_BlackHoleData value, $Res Function(_$_BlackHoleData) then) =
      __$$_BlackHoleDataCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'is_alumni') bool? isAlumni,
      dynamic agu,
      @JsonKey(name: 'agu_date') dynamic aguDate,
      @JsonKey(name: 'singularity') int? singularity,
      @JsonKey(name: 'bh_date') String? bhDate});
}

/// @nodoc
class __$$_BlackHoleDataCopyWithImpl<$Res>
    extends _$BlackHoleDataCopyWithImpl<$Res, _$_BlackHoleData>
    implements _$$_BlackHoleDataCopyWith<$Res> {
  __$$_BlackHoleDataCopyWithImpl(
      _$_BlackHoleData _value, $Res Function(_$_BlackHoleData) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isAlumni = freezed,
    Object? agu = null,
    Object? aguDate = null,
    Object? singularity = freezed,
    Object? bhDate = freezed,
  }) {
    return _then(_$_BlackHoleData(
      isAlumni: freezed == isAlumni
          ? _value.isAlumni
          : isAlumni // ignore: cast_nullable_to_non_nullable
              as bool?,
      agu: null == agu
          ? _value.agu
          : agu // ignore: cast_nullable_to_non_nullable
              as dynamic,
      aguDate: null == aguDate
          ? _value.aguDate
          : aguDate // ignore: cast_nullable_to_non_nullable
              as dynamic,
      singularity: freezed == singularity
          ? _value.singularity
          : singularity // ignore: cast_nullable_to_non_nullable
              as int?,
      bhDate: freezed == bhDate
          ? _value.bhDate
          : bhDate // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_BlackHoleData implements _BlackHoleData {
  const _$_BlackHoleData(
      {@JsonKey(name: 'is_alumni') this.isAlumni,
      this.agu,
      @JsonKey(name: 'agu_date') this.aguDate,
      @JsonKey(name: 'singularity') this.singularity,
      @JsonKey(name: 'bh_date') this.bhDate});

  factory _$_BlackHoleData.fromJson(Map<String, dynamic> json) =>
      _$$_BlackHoleDataFromJson(json);

  @override
  @JsonKey(name: 'is_alumni')
  final bool? isAlumni;
  @override
  final dynamic agu;
  @override
  @JsonKey(name: 'agu_date')
  final dynamic aguDate;
  @override
  @JsonKey(name: 'singularity')
  final int? singularity;
  @override
  @JsonKey(name: 'bh_date')
  final String? bhDate;

  @override
  String toString() {
    return 'BlackHoleData(isAlumni: $isAlumni, agu: $agu, aguDate: $aguDate, singularity: $singularity, bhDate: $bhDate)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_BlackHoleData &&
            (identical(other.isAlumni, isAlumni) ||
                other.isAlumni == isAlumni) &&
            const DeepCollectionEquality().equals(other.agu, agu) &&
            const DeepCollectionEquality().equals(other.aguDate, aguDate) &&
            (identical(other.singularity, singularity) ||
                other.singularity == singularity) &&
            (identical(other.bhDate, bhDate) || other.bhDate == bhDate));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      isAlumni,
      const DeepCollectionEquality().hash(agu),
      const DeepCollectionEquality().hash(aguDate),
      singularity,
      bhDate);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_BlackHoleDataCopyWith<_$_BlackHoleData> get copyWith =>
      __$$_BlackHoleDataCopyWithImpl<_$_BlackHoleData>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_BlackHoleDataToJson(
      this,
    );
  }
}

abstract class _BlackHoleData implements BlackHoleData {
  const factory _BlackHoleData(
      {@JsonKey(name: 'is_alumni') final bool? isAlumni,
      final dynamic agu,
      @JsonKey(name: 'agu_date') final dynamic aguDate,
      @JsonKey(name: 'singularity') final int? singularity,
      @JsonKey(name: 'bh_date') final String? bhDate}) = _$_BlackHoleData;

  factory _BlackHoleData.fromJson(Map<String, dynamic> json) =
      _$_BlackHoleData.fromJson;

  @override
  @JsonKey(name: 'is_alumni')
  bool? get isAlumni;
  @override
  dynamic get agu;
  @override
  @JsonKey(name: 'agu_date')
  dynamic get aguDate;
  @override
  @JsonKey(name: 'singularity')
  int? get singularity;
  @override
  @JsonKey(name: 'bh_date')
  String? get bhDate;
  @override
  @JsonKey(ignore: true)
  _$$_BlackHoleDataCopyWith<_$_BlackHoleData> get copyWith =>
      throw _privateConstructorUsedError;
}
