import 'dart:core';

import 'package:built_collection/built_collection.dart';
import 'package:dmc_threads/src/entities/dmc.dart';
import 'package:dmc_threads/src/entities/rgba.dart';
import 'package:dmc_threads_annotation/dmc_threads_annotation.dart';

part 'palette.g.dart';

@DmcThreadsAnnotation()
abstract class Palette {
  Palette._();

  static BuiltList<Dmc> get dmc => _dmc();
}
