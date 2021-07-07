// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'dmc.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<Dmc> _$dmcSerializer = new _$DmcSerializer();

class _$DmcSerializer implements StructuredSerializer<Dmc> {
  @override
  final Iterable<Type> types = const [Dmc, _$Dmc];
  @override
  final String wireName = 'Dmc';

  @override
  Iterable<Object?> serialize(Serializers serializers, Dmc object, {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'name',
      serializers.serialize(object.name, specifiedType: const FullType(String)),
      'code',
      serializers.serialize(object.code, specifiedType: const FullType(String)),
      'rgba',
      serializers.serialize(object.rgba, specifiedType: const FullType(Rgba)),
      'hex',
      serializers.serialize(object.hex, specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.lab;
    if (value != null) {
      result..add('lab')..add(serializers.serialize(value, specifiedType: const FullType(Lab)));
    }
    return result;
  }

  @override
  Dmc deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new DmcBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'name':
          result.name = serializers.deserialize(value, specifiedType: const FullType(String)) as String;
          break;
        case 'code':
          result.code = serializers.deserialize(value, specifiedType: const FullType(String)) as String;
          break;
        case 'rgba':
          result.rgba.replace(serializers.deserialize(value, specifiedType: const FullType(Rgba))! as Rgba);
          break;
        case 'hex':
          result.hex = serializers.deserialize(value, specifiedType: const FullType(String)) as String;
          break;
        case 'lab':
          result.lab.replace(serializers.deserialize(value, specifiedType: const FullType(Lab))! as Lab);
          break;
      }
    }

    return result.build();
  }
}

class _$Dmc extends Dmc {
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

  factory _$Dmc([void Function(DmcBuilder)? updates]) => (new DmcBuilder()..update(updates)).build();

  _$Dmc._({required this.name, required this.code, required this.rgba, required this.hex, this.lab}) : super._() {
    BuiltValueNullFieldError.checkNotNull(name, 'Dmc', 'name');
    BuiltValueNullFieldError.checkNotNull(code, 'Dmc', 'code');
    BuiltValueNullFieldError.checkNotNull(rgba, 'Dmc', 'rgba');
    BuiltValueNullFieldError.checkNotNull(hex, 'Dmc', 'hex');
  }

  @override
  Dmc rebuild(void Function(DmcBuilder) updates) => (toBuilder()..update(updates)).build();

  @override
  DmcBuilder toBuilder() => new DmcBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Dmc &&
        name == other.name &&
        code == other.code &&
        rgba == other.rgba &&
        hex == other.hex &&
        lab == other.lab;
  }

  @override
  int get hashCode {
    return $jf($jc($jc($jc($jc($jc(0, name.hashCode), code.hashCode), rgba.hashCode), hex.hashCode), lab.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('Dmc')
          ..add('name', name)
          ..add('code', code)
          ..add('rgba', rgba)
          ..add('hex', hex)
          ..add('lab', lab))
        .toString();
  }
}

class DmcBuilder implements Builder<Dmc, DmcBuilder> {
  _$Dmc? _$v;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  String? _code;
  String? get code => _$this._code;
  set code(String? code) => _$this._code = code;

  RgbaBuilder? _rgba;
  RgbaBuilder get rgba => _$this._rgba ??= new RgbaBuilder();
  set rgba(RgbaBuilder? rgba) => _$this._rgba = rgba;

  String? _hex;
  String? get hex => _$this._hex;
  set hex(String? hex) => _$this._hex = hex;

  LabBuilder? _lab;
  LabBuilder get lab => _$this._lab ??= new LabBuilder();
  set lab(LabBuilder? lab) => _$this._lab = lab;

  DmcBuilder() {
    Dmc._initializeBuilder(this);
  }

  DmcBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _name = $v.name;
      _code = $v.code;
      _rgba = $v.rgba.toBuilder();
      _hex = $v.hex;
      _lab = $v.lab?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Dmc other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Dmc;
  }

  @override
  void update(void Function(DmcBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$Dmc build() {
    _$Dmc _$result;
    try {
      _$result = _$v ??
          new _$Dmc._(
              name: BuiltValueNullFieldError.checkNotNull(name, 'Dmc', 'name'),
              code: BuiltValueNullFieldError.checkNotNull(code, 'Dmc', 'code'),
              rgba: rgba.build(),
              hex: BuiltValueNullFieldError.checkNotNull(hex, 'Dmc', 'hex'),
              lab: _lab?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'rgba';
        rgba.build();

        _$failedField = 'lab';
        _lab?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError('Dmc', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
