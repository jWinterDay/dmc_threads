import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

import 'package:dmc_threads/src/entities/lab.dart';
import 'package:dmc_threads/src/entities/rgba.dart';
import 'package:dmc_threads/src/entities/thread_type.dart';

part 'dmc.g.dart';

abstract class Dmc implements ThreadType, Built<Dmc, DmcBuilder> {
  Dmc._();

  factory Dmc([Function(DmcBuilder builder)? updates]) {
    return _$Dmc(
      (DmcBuilder builder) {
        _initializeBuilder(builder);
        builder.update(updates);
      },
    );
  }

  static void _initializeBuilder(DmcBuilder b) => b;

  @override
  String get name;

  @override
  String get code;

  @override
  Rgba get rgba;

  @override
  String get hex;

  @override
  Lab? get lab;

  static Serializer<Dmc> get serializer => _$dmcSerializer;
}
