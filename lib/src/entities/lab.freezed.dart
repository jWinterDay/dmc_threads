// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'lab.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Lab _$LabFromJson(Map<String, dynamic> json) {
  return _Lab.fromJson(json);
}

/// @nodoc
class _$LabTearOff {
  const _$LabTearOff();

  _Lab call(double l, double a, double b) {
    return _Lab(
      l,
      a,
      b,
    );
  }

  Lab fromJson(Map<String, Object> json) {
    return Lab.fromJson(json);
  }
}

/// @nodoc
const $Lab = _$LabTearOff();

/// @nodoc
mixin _$Lab {
  double get l => throw _privateConstructorUsedError;
  double get a => throw _privateConstructorUsedError;
  double get b => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LabCopyWith<Lab> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LabCopyWith<$Res> {
  factory $LabCopyWith(Lab value, $Res Function(Lab) then) = _$LabCopyWithImpl<$Res>;
  $Res call({double l, double a, double b});
}

/// @nodoc
class _$LabCopyWithImpl<$Res> implements $LabCopyWith<$Res> {
  _$LabCopyWithImpl(this._value, this._then);

  final Lab _value;
  // ignore: unused_field
  final $Res Function(Lab) _then;

  @override
  $Res call({
    Object? l = freezed,
    Object? a = freezed,
    Object? b = freezed,
  }) {
    return _then(_value.copyWith(
      l: l == freezed
          ? _value.l
          : l // ignore: cast_nullable_to_non_nullable
              as double,
      a: a == freezed
          ? _value.a
          : a // ignore: cast_nullable_to_non_nullable
              as double,
      b: b == freezed
          ? _value.b
          : b // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
abstract class _$LabCopyWith<$Res> implements $LabCopyWith<$Res> {
  factory _$LabCopyWith(_Lab value, $Res Function(_Lab) then) = __$LabCopyWithImpl<$Res>;
  @override
  $Res call({double l, double a, double b});
}

/// @nodoc
class __$LabCopyWithImpl<$Res> extends _$LabCopyWithImpl<$Res> implements _$LabCopyWith<$Res> {
  __$LabCopyWithImpl(_Lab _value, $Res Function(_Lab) _then) : super(_value, (v) => _then(v as _Lab));

  @override
  _Lab get _value => super._value as _Lab;

  @override
  $Res call({
    Object? l = freezed,
    Object? a = freezed,
    Object? b = freezed,
  }) {
    return _then(_Lab(
      l == freezed
          ? _value.l
          : l // ignore: cast_nullable_to_non_nullable
              as double,
      a == freezed
          ? _value.a
          : a // ignore: cast_nullable_to_non_nullable
              as double,
      b == freezed
          ? _value.b
          : b // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Lab implements _Lab {
  const _$_Lab(this.l, this.a, this.b);

  factory _$_Lab.fromJson(Map<String, dynamic> json) => _$_$_LabFromJson(json);

  @override
  final double l;
  @override
  final double a;
  @override
  final double b;

  @override
  String toString() {
    return 'Lab(l: $l, a: $a, b: $b)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Lab &&
            (identical(other.l, l) || const DeepCollectionEquality().equals(other.l, l)) &&
            (identical(other.a, a) || const DeepCollectionEquality().equals(other.a, a)) &&
            (identical(other.b, b) || const DeepCollectionEquality().equals(other.b, b)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(l) ^
      const DeepCollectionEquality().hash(a) ^
      const DeepCollectionEquality().hash(b);

  @JsonKey(ignore: true)
  @override
  _$LabCopyWith<_Lab> get copyWith => __$LabCopyWithImpl<_Lab>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_LabToJson(this);
  }
}

abstract class _Lab implements Lab {
  const factory _Lab(double l, double a, double b) = _$_Lab;

  factory _Lab.fromJson(Map<String, dynamic> json) = _$_Lab.fromJson;

  @override
  double get l => throw _privateConstructorUsedError;
  @override
  double get a => throw _privateConstructorUsedError;
  @override
  double get b => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$LabCopyWith<_Lab> get copyWith => throw _privateConstructorUsedError;
}
