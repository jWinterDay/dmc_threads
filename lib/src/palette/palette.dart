import 'dart:core';

import 'package:built_collection/built_collection.dart';
import 'package:dmc_threads/src/entities/dmc.dart';
import 'package:dmc_threads/src/entities/rgba.dart';
import 'package:dmc_threads_annotation/dmc_threads_annotation.dart';

part 'palette.g.dart';

@DmcThreadsAnnotation()
abstract class Palette {
  Palette._();

  // TODO lab
  static final Iterable<Dmc> _dmcList = _dmc();

  static BuiltList<Dmc> get dmc {
    return BuiltList<Dmc>.from(_dmcList);
  }

  static BuiltMap<String, Dmc> get dmcMap {
    return BuiltMap<String, Dmc>.of(
      <String, Dmc>{
        for (Dmc v in _dmcList) v.code: v,
      },
    );
  }
}
