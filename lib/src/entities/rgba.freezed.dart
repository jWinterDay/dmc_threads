// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'rgba.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Rgba _$RgbaFromJson(Map<String, dynamic> json) {
  return _Rgba.fromJson(json);
}

/// @nodoc
class _$RgbaTearOff {
  const _$RgbaTearOff();

  _Rgba call(int r, int g, int b, {int a = 255}) {
    return _Rgba(
      r,
      g,
      b,
      a: a,
    );
  }

  Rgba fromJson(Map<String, Object> json) {
    return Rgba.fromJson(json);
  }
}

/// @nodoc
const $Rgba = _$RgbaTearOff();

/// @nodoc
mixin _$Rgba {
  int get r => throw _privateConstructorUsedError;
  int get g => throw _privateConstructorUsedError;
  int get b => throw _privateConstructorUsedError;
  int get a => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RgbaCopyWith<Rgba> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RgbaCopyWith<$Res> {
  factory $RgbaCopyWith(Rgba value, $Res Function(Rgba) then) = _$RgbaCopyWithImpl<$Res>;
  $Res call({int r, int g, int b, int a});
}

/// @nodoc
class _$RgbaCopyWithImpl<$Res> implements $RgbaCopyWith<$Res> {
  _$RgbaCopyWithImpl(this._value, this._then);

  final Rgba _value;
  // ignore: unused_field
  final $Res Function(Rgba) _then;

  @override
  $Res call({
    Object? r = freezed,
    Object? g = freezed,
    Object? b = freezed,
    Object? a = freezed,
  }) {
    return _then(_value.copyWith(
      r: r == freezed
          ? _value.r
          : r // ignore: cast_nullable_to_non_nullable
              as int,
      g: g == freezed
          ? _value.g
          : g // ignore: cast_nullable_to_non_nullable
              as int,
      b: b == freezed
          ? _value.b
          : b // ignore: cast_nullable_to_non_nullable
              as int,
      a: a == freezed
          ? _value.a
          : a // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
abstract class _$RgbaCopyWith<$Res> implements $RgbaCopyWith<$Res> {
  factory _$RgbaCopyWith(_Rgba value, $Res Function(_Rgba) then) = __$RgbaCopyWithImpl<$Res>;
  @override
  $Res call({int r, int g, int b, int a});
}

/// @nodoc
class __$RgbaCopyWithImpl<$Res> extends _$RgbaCopyWithImpl<$Res> implements _$RgbaCopyWith<$Res> {
  __$RgbaCopyWithImpl(_Rgba _value, $Res Function(_Rgba) _then) : super(_value, (v) => _then(v as _Rgba));

  @override
  _Rgba get _value => super._value as _Rgba;

  @override
  $Res call({
    Object? r = freezed,
    Object? g = freezed,
    Object? b = freezed,
    Object? a = freezed,
  }) {
    return _then(_Rgba(
      r == freezed
          ? _value.r
          : r // ignore: cast_nullable_to_non_nullable
              as int,
      g == freezed
          ? _value.g
          : g // ignore: cast_nullable_to_non_nullable
              as int,
      b == freezed
          ? _value.b
          : b // ignore: cast_nullable_to_non_nullable
              as int,
      a: a == freezed
          ? _value.a
          : a // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Rgba implements _Rgba {
  const _$_Rgba(this.r, this.g, this.b, {this.a = 255});

  factory _$_Rgba.fromJson(Map<String, dynamic> json) => _$_$_RgbaFromJson(json);

  @override
  final int r;
  @override
  final int g;
  @override
  final int b;
  @JsonKey(defaultValue: 255)
  @override
  final int a;

  @override
  String toString() {
    return 'Rgba(r: $r, g: $g, b: $b, a: $a)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Rgba &&
            (identical(other.r, r) || const DeepCollectionEquality().equals(other.r, r)) &&
            (identical(other.g, g) || const DeepCollectionEquality().equals(other.g, g)) &&
            (identical(other.b, b) || const DeepCollectionEquality().equals(other.b, b)) &&
            (identical(other.a, a) || const DeepCollectionEquality().equals(other.a, a)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(r) ^
      const DeepCollectionEquality().hash(g) ^
      const DeepCollectionEquality().hash(b) ^
      const DeepCollectionEquality().hash(a);

  @JsonKey(ignore: true)
  @override
  _$RgbaCopyWith<_Rgba> get copyWith => __$RgbaCopyWithImpl<_Rgba>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_RgbaToJson(this);
  }
}

abstract class _Rgba implements Rgba {
  const factory _Rgba(int r, int g, int b, {int a}) = _$_Rgba;

  factory _Rgba.fromJson(Map<String, dynamic> json) = _$_Rgba.fromJson;

  @override
  int get r => throw _privateConstructorUsedError;
  @override
  int get g => throw _privateConstructorUsedError;
  @override
  int get b => throw _privateConstructorUsedError;
  @override
  int get a => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$RgbaCopyWith<_Rgba> get copyWith => throw _privateConstructorUsedError;
}
