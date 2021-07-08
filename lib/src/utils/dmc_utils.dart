import 'dart:math' as math;
import 'package:built_collection/built_collection.dart';
import 'package:collection/collection.dart';
import 'package:dmc_threads/src/entities/dmc.dart';
import 'package:dmc_threads/src/entities/lab.dart';
import 'package:dmc_threads/src/entities/rgba.dart';
import 'package:dmc_threads/src/utils/constants.dart';

const double kDeltaLab = 0.008856;
final Rgba kDefaultBgColor = Rgba((RgbaBuilder b) {
  return b
    ..r = 255
    ..g = 255
    ..b = 255;
});

class DmcUtils {
  DmcUtils._();

  static Dmc? findDmcByCode(String code, BuiltMap<String, Dmc> dmcMap) {
    return dmcMap[code];
  }

  static double getDeltaE(Lab lab, Lab? paletteLab) {
    if (paletteLab == null) {
      return 0;
    }

    return math.sqrt(
      math.pow(lab.l - paletteLab.l, 2) + math.pow(lab.a - paletteLab.a, 2) + math.pow(lab.b - paletteLab.b, 2),
    );
  }

  static Dmc? findNearestPalette(Lab lab, BuiltMap<String, Dmc> dmcMap) {
    return dmcMap.values.firstWhereOrNull((Dmc item) {
      final double deltaE = getDeltaE(lab, item.lab);

      return deltaE < optimalDeltaE;
    });
  }

  static Rgba getAvgColor(Iterable<Rgba> colors) {
    final int cnt = colors.length;
    num r = 0;
    num g = 0;
    num b = 0;
    num a = 0;

    colors.forEach((Rgba color) {
      r += color.r;
      g += color.g;
      b += color.b;
      a += color.a;
    });

    return Rgba((RgbaBuilder updates) {
      return updates
        ..r = (r / cnt).ceil()
        ..g = (g / cnt).ceil()
        ..b = (b / cnt).ceil()
        ..a = (a / cnt).ceil();
    });
  }

  static Lab rgbaToLab({
    required int r,
    required int g,
    required int b,
    required int a,
    Rgba? bg,
  }) {
    bg ??= kDefaultBgColor;

    // RGBA -> RGB
    final double pAlpha = (a) / 255;
    double pR = r.toDouble();
    double pG = g.toDouble();
    double pB = b.toDouble();

    pR = (1 - pAlpha) * bg.r + pR * pAlpha;
    pG = (1 - pAlpha) * bg.g + pG * pAlpha;
    pB = (1 - pAlpha) * bg.b + pB * pAlpha;

    // normalize colors
    pR = pR / 255.0;
    pG = pG / 255.0;
    pB = pB / 255.0;

    // convert to xyz
    pR = _normalizeColor(pR);
    pG = _normalizeColor(pG);
    pB = _normalizeColor(pB);

    double x = (pR * 0.4124 + pG * 0.3576 + pB * 0.1805) * 100;
    double y = (pR * 0.2126 + pG * 0.7152 + pB * 0.0722) * 100;
    double z = (pR * 0.0193 + pG * 0.1192 + pB * 0.9505) * 100;

    // convert to lab
    x = (x / 95.047);
    y = (y / 100.0);
    z = (z / 108.883);

    x = _normalizeXYZ(x);
    y = _normalizeXYZ(y);
    z = _normalizeXYZ(z);

    return Lab((LabBuilder b) {
      return b
        ..l = double.parse(((116.0 * y) - 16.0).toStringAsFixed(3))
        ..a = double.parse((500.0 * (x - y)).toStringAsFixed(3))
        ..b = double.parse((200.0 * (y - z)).toStringAsFixed(3));
    });
  }

  static double _normalizeColor(double color) {
    return (color > 0.04045) ? math.pow((color + 0.055) / 1.055, 2.4).toDouble() : color / 12.92;
  }

  static double _normalizeXYZ(double t) {
    return (t > kDeltaLab) ? math.pow(t, 1 / 3).toDouble() : 7.787 * t + (16.0 / 116.0);
  }
}
