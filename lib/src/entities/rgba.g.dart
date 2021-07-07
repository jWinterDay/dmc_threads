// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'rgba.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<Rgba> _$rgbaSerializer = new _$RgbaSerializer();

class _$RgbaSerializer implements StructuredSerializer<Rgba> {
  @override
  final Iterable<Type> types = const [Rgba, _$Rgba];
  @override
  final String wireName = 'Rgba';

  @override
  Iterable<Object?> serialize(Serializers serializers, Rgba object, {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'r',
      serializers.serialize(object.r, specifiedType: const FullType(int)),
      'g',
      serializers.serialize(object.g, specifiedType: const FullType(int)),
      'b',
      serializers.serialize(object.b, specifiedType: const FullType(int)),
      'a',
      serializers.serialize(object.a, specifiedType: const FullType(int)),
    ];

    return result;
  }

  @override
  Rgba deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new RgbaBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'r':
          result.r = serializers.deserialize(value, specifiedType: const FullType(int)) as int;
          break;
        case 'g':
          result.g = serializers.deserialize(value, specifiedType: const FullType(int)) as int;
          break;
        case 'b':
          result.b = serializers.deserialize(value, specifiedType: const FullType(int)) as int;
          break;
        case 'a':
          result.a = serializers.deserialize(value, specifiedType: const FullType(int)) as int;
          break;
      }
    }

    return result.build();
  }
}

class _$Rgba extends Rgba {
  @override
  final int r;
  @override
  final int g;
  @override
  final int b;
  @override
  final int a;

  factory _$Rgba([void Function(RgbaBuilder)? updates]) => (new RgbaBuilder()..update(updates)).build();

  _$Rgba._({required this.r, required this.g, required this.b, required this.a}) : super._() {
    BuiltValueNullFieldError.checkNotNull(r, 'Rgba', 'r');
    BuiltValueNullFieldError.checkNotNull(g, 'Rgba', 'g');
    BuiltValueNullFieldError.checkNotNull(b, 'Rgba', 'b');
    BuiltValueNullFieldError.checkNotNull(a, 'Rgba', 'a');
  }

  @override
  Rgba rebuild(void Function(RgbaBuilder) updates) => (toBuilder()..update(updates)).build();

  @override
  RgbaBuilder toBuilder() => new RgbaBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Rgba && r == other.r && g == other.g && b == other.b && a == other.a;
  }

  @override
  int get hashCode {
    return $jf($jc($jc($jc($jc(0, r.hashCode), g.hashCode), b.hashCode), a.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('Rgba')..add('r', r)..add('g', g)..add('b', b)..add('a', a)).toString();
  }
}

class RgbaBuilder implements Builder<Rgba, RgbaBuilder> {
  _$Rgba? _$v;

  int? _r;
  int? get r => _$this._r;
  set r(int? r) => _$this._r = r;

  int? _g;
  int? get g => _$this._g;
  set g(int? g) => _$this._g = g;

  int? _b;
  int? get b => _$this._b;
  set b(int? b) => _$this._b = b;

  int? _a;
  int? get a => _$this._a;
  set a(int? a) => _$this._a = a;

  RgbaBuilder() {
    Rgba._initializeBuilder(this);
  }

  RgbaBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _r = $v.r;
      _g = $v.g;
      _b = $v.b;
      _a = $v.a;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Rgba other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Rgba;
  }

  @override
  void update(void Function(RgbaBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$Rgba build() {
    final _$result = _$v ??
        new _$Rgba._(
            r: BuiltValueNullFieldError.checkNotNull(r, 'Rgba', 'r'),
            g: BuiltValueNullFieldError.checkNotNull(g, 'Rgba', 'g'),
            b: BuiltValueNullFieldError.checkNotNull(b, 'Rgba', 'b'),
            a: BuiltValueNullFieldError.checkNotNull(a, 'Rgba', 'a'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
