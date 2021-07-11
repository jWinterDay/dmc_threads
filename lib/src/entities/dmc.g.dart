// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'dmc.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Dmc _$_$_DmcFromJson(Map<String, dynamic> json) {
  return _$_Dmc(
    json['name'] as String,
    json['code'] as String,
    Rgba.fromJson(json['rgba'] as Map<String, dynamic>),
    json['hex'] as String,
    lab: json['lab'] == null ? null : Lab.fromJson(json['lab'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$_$_DmcToJson(_$_Dmc instance) => <String, dynamic>{
      'name': instance.name,
      'code': instance.code,
      'rgba': instance.rgba,
      'hex': instance.hex,
      'lab': instance.lab,
    };
