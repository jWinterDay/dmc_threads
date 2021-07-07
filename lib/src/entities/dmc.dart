import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

import 'package:dmc_threads/src/entities/lab.dart';
import 'package:dmc_threads/src/entities/rgba.dart';

part 'dmc.g.dart';

abstract class Dmc implements Built<Dmc, DmcBuilder> {
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

  String get name;
  String get code;
  Rgba get rgba;
  String get hex;
  Lab? get lab;

  static Serializer<Dmc> get serializer => _$dmcSerializer;
}
