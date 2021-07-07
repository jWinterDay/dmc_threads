// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'lab.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<Lab> _$labSerializer = new _$LabSerializer();

class _$LabSerializer implements StructuredSerializer<Lab> {
  @override
  final Iterable<Type> types = const [Lab, _$Lab];
  @override
  final String wireName = 'Lab';

  @override
  Iterable<Object?> serialize(Serializers serializers, Lab object, {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'l',
      serializers.serialize(object.l, specifiedType: const FullType(double)),
      'a',
      serializers.serialize(object.a, specifiedType: const FullType(double)),
      'b',
      serializers.serialize(object.b, specifiedType: const FullType(double)),
    ];

    return result;
  }

  @override
  Lab deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new LabBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'l':
          result.l = serializers.deserialize(value, specifiedType: const FullType(double)) as double;
          break;
        case 'a':
          result.a = serializers.deserialize(value, specifiedType: const FullType(double)) as double;
          break;
        case 'b':
          result.b = serializers.deserialize(value, specifiedType: const FullType(double)) as double;
          break;
      }
    }

    return result.build();
  }
}

class _$Lab extends Lab {
  @override
  final double l;
  @override
  final double a;
  @override
  final double b;

  factory _$Lab([void Function(LabBuilder)? updates]) => (new LabBuilder()..update(updates)).build();

  _$Lab._({required this.l, required this.a, required this.b}) : super._() {
    BuiltValueNullFieldError.checkNotNull(l, 'Lab', 'l');
    BuiltValueNullFieldError.checkNotNull(a, 'Lab', 'a');
    BuiltValueNullFieldError.checkNotNull(b, 'Lab', 'b');
  }

  @override
  Lab rebuild(void Function(LabBuilder) updates) => (toBuilder()..update(updates)).build();

  @override
  LabBuilder toBuilder() => new LabBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Lab && l == other.l && a == other.a && b == other.b;
  }

  @override
  int get hashCode {
    return $jf($jc($jc($jc(0, l.hashCode), a.hashCode), b.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('Lab')..add('l', l)..add('a', a)..add('b', b)).toString();
  }
}

class LabBuilder implements Builder<Lab, LabBuilder> {
  _$Lab? _$v;

  double? _l;
  double? get l => _$this._l;
  set l(double? l) => _$this._l = l;

  double? _a;
  double? get a => _$this._a;
  set a(double? a) => _$this._a = a;

  double? _b;
  double? get b => _$this._b;
  set b(double? b) => _$this._b = b;

  LabBuilder() {
    Lab._initializeBuilder(this);
  }

  LabBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _l = $v.l;
      _a = $v.a;
      _b = $v.b;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Lab other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Lab;
  }

  @override
  void update(void Function(LabBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$Lab build() {
    final _$result = _$v ??
        new _$Lab._(
            l: BuiltValueNullFieldError.checkNotNull(l, 'Lab', 'l'),
            a: BuiltValueNullFieldError.checkNotNull(a, 'Lab', 'a'),
            b: BuiltValueNullFieldError.checkNotNull(b, 'Lab', 'b'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
