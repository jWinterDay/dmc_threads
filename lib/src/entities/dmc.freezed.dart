// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'dmc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Dmc _$DmcFromJson(Map<String, dynamic> json) {
  return _Dmc.fromJson(json);
}

/// @nodoc
class _$DmcTearOff {
  const _$DmcTearOff();

  _Dmc call(String name, String code, Rgba rgba, String hex, {Lab? lab}) {
    return _Dmc(
      name,
      code,
      rgba,
      hex,
      lab: lab,
    );
  }

  Dmc fromJson(Map<String, Object> json) {
    return Dmc.fromJson(json);
  }
}

/// @nodoc
const $Dmc = _$DmcTearOff();

/// @nodoc
mixin _$Dmc {
  String get name => throw _privateConstructorUsedError;
  String get code => throw _privateConstructorUsedError;
  Rgba get rgba => throw _privateConstructorUsedError;
  String get hex => throw _privateConstructorUsedError;
  Lab? get lab => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DmcCopyWith<Dmc> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DmcCopyWith<$Res> {
  factory $DmcCopyWith(Dmc value, $Res Function(Dmc) then) = _$DmcCopyWithImpl<$Res>;
  $Res call({String name, String code, Rgba rgba, String hex, Lab? lab});

  $RgbaCopyWith<$Res> get rgba;
  $LabCopyWith<$Res>? get lab;
}

/// @nodoc
class _$DmcCopyWithImpl<$Res> implements $DmcCopyWith<$Res> {
  _$DmcCopyWithImpl(this._value, this._then);

  final Dmc _value;
  // ignore: unused_field
  final $Res Function(Dmc) _then;

  @override
  $Res call({
    Object? name = freezed,
    Object? code = freezed,
    Object? rgba = freezed,
    Object? hex = freezed,
    Object? lab = freezed,
  }) {
    return _then(_value.copyWith(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      code: code == freezed
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String,
      rgba: rgba == freezed
          ? _value.rgba
          : rgba // ignore: cast_nullable_to_non_nullable
              as Rgba,
      hex: hex == freezed
          ? _value.hex
          : hex // ignore: cast_nullable_to_non_nullable
              as String,
      lab: lab == freezed
          ? _value.lab
          : lab // ignore: cast_nullable_to_non_nullable
              as Lab?,
    ));
  }

  @override
  $RgbaCopyWith<$Res> get rgba {
    return $RgbaCopyWith<$Res>(_value.rgba, (value) {
      return _then(_value.copyWith(rgba: value));
    });
  }

  @override
  $LabCopyWith<$Res>? get lab {
    if (_value.lab == null) {
      return null;
    }

    return $LabCopyWith<$Res>(_value.lab!, (value) {
      return _then(_value.copyWith(lab: value));
    });
  }
}

/// @nodoc
abstract class _$DmcCopyWith<$Res> implements $DmcCopyWith<$Res> {
  factory _$DmcCopyWith(_Dmc value, $Res Function(_Dmc) then) = __$DmcCopyWithImpl<$Res>;
  @override
  $Res call({String name, String code, Rgba rgba, String hex, Lab? lab});

  @override
  $RgbaCopyWith<$Res> get rgba;
  @override
  $LabCopyWith<$Res>? get lab;
}

/// @nodoc
class __$DmcCopyWithImpl<$Res> extends _$DmcCopyWithImpl<$Res> implements _$DmcCopyWith<$Res> {
  __$DmcCopyWithImpl(_Dmc _value, $Res Function(_Dmc) _then) : super(_value, (v) => _then(v as _Dmc));

  @override
  _Dmc get _value => super._value as _Dmc;

  @override
  $Res call({
    Object? name = freezed,
    Object? code = freezed,
    Object? rgba = freezed,
    Object? hex = freezed,
    Object? lab = freezed,
  }) {
    return _then(_Dmc(
      name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      code == freezed
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String,
      rgba == freezed
          ? _value.rgba
          : rgba // ignore: cast_nullable_to_non_nullable
              as Rgba,
      hex == freezed
          ? _value.hex
          : hex // ignore: cast_nullable_to_non_nullable
              as String,
      lab: lab == freezed
          ? _value.lab
          : lab // ignore: cast_nullable_to_non_nullable
              as Lab?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Dmc implements _Dmc {
  const _$_Dmc(this.name, this.code, this.rgba, this.hex, {this.lab});

  factory _$_Dmc.fromJson(Map<String, dynamic> json) => _$_$_DmcFromJson(json);

  @override
  final String name;
  @override
  final String code;
  @override
  final Rgba rgba;
  @override
  final String hex;
  @override
  final Lab? lab;

  @override
  String toString() {
    return 'Dmc(name: $name, code: $code, rgba: $rgba, hex: $hex, lab: $lab)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Dmc &&
            (identical(other.name, name) || const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.code, code) || const DeepCollectionEquality().equals(other.code, code)) &&
            (identical(other.rgba, rgba) || const DeepCollectionEquality().equals(other.rgba, rgba)) &&
            (identical(other.hex, hex) || const DeepCollectionEquality().equals(other.hex, hex)) &&
            (identical(other.lab, lab) || const DeepCollectionEquality().equals(other.lab, lab)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(code) ^
      const DeepCollectionEquality().hash(rgba) ^
      const DeepCollectionEquality().hash(hex) ^
      const DeepCollectionEquality().hash(lab);

  @JsonKey(ignore: true)
  @override
  _$DmcCopyWith<_Dmc> get copyWith => __$DmcCopyWithImpl<_Dmc>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_DmcToJson(this);
  }
}

abstract class _Dmc implements Dmc {
  const factory _Dmc(String name, String code, Rgba rgba, String hex, {Lab? lab}) = _$_Dmc;

  factory _Dmc.fromJson(Map<String, dynamic> json) = _$_Dmc.fromJson;

  @override
  String get name => throw _privateConstructorUsedError;
  @override
  String get code => throw _privateConstructorUsedError;
  @override
  Rgba get rgba => throw _privateConstructorUsedError;
  @override
  String get hex => throw _privateConstructorUsedError;
  @override
  Lab? get lab => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$DmcCopyWith<_Dmc> get copyWith => throw _privateConstructorUsedError;
}
