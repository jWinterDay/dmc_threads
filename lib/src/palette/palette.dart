import 'dart:core';

import 'package:dmc_threads/src/entities/dmc.dart';
import 'package:dmc_threads/src/entities/lab.dart';
import 'package:dmc_threads/src/entities/rgba.dart';
import 'package:dmc_threads/src/utils/dmc_utils.dart';
import 'package:dmc_threads_annotation/dmc_threads_annotation.dart';

part 'palette.g.dart';

@DmcThreadsAnnotation()
abstract class Palette {
  Palette._();

  static Map<String, Dmc> dmcMap = Map<String, Dmc>.of(
    <String, Dmc>{
      for (Dmc v in _dmc()) v.code: v,
    },
  );

  // utils
  static Dmc? findDmcByCode(String code) {
    return DmcUtils.findDmcByCode(code, dmcMap);
  }

  static double getDeltaE(Lab lab, Lab? paletteLab) {
    return DmcUtils.getDeltaE(lab, paletteLab);
  }

  static Dmc? findNearestPalette(Lab lab) {
    return DmcUtils.findNearestPalette(lab, dmcMap);
  }

  static Rgba getAvgColor(Iterable<Rgba> colors) {
    return DmcUtils.getAvgColor(colors);
  }

  static Lab rgbaToLab({required int r, required int g, required int b, Rgba? bg}) {
    return DmcUtils.rgbaToLab(r: r, g: g, b: b, bg: bg);
  }
}
