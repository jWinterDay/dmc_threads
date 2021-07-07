import 'dart:math' as math;
import 'package:built_collection/built_collection.dart';
import 'package:collection/collection.dart';
import 'package:dmc_threads/src/entities/dmc.dart';

class DmcUtils {
  Dmc? findDmcByCode(String code, BuiltList<Dmc> dmcList) {
    return dmcList.firstWhereOrNull(
      (Dmc item) => item.code == code,
    );
  }
}

// import 'package:dmc_threads/src/entities/lab.dart';
// import 'package:dmc_threads/src/entities/rgba.dart';

// PaletteType findDmcByCode(String code) {
//   if (code == null) throw ArgumentError.notNull('code');

//   return kDmcValues.firstWhere(
//     (item) => item.code == code,
//     orElse: () => null,
//   );
// }

// double getDeltaE(Lab lab, Lab paletteLab) {
//   if (lab == null) throw ArgumentError.notNull('lab');
//   if (paletteLab == null) throw ArgumentError.notNull('paletteLab');

//   return math.sqrt(
//     math.pow(lab.l - paletteLab.l, 2) + math.pow(lab.a - paletteLab.a, 2) + math.pow(lab.b - paletteLab.b, 2),
//   );
// }

// PaletteType findNearestPalette(Lab lab, List<PaletteType> paletteList) {
//   if (lab == null) throw ArgumentError.notNull('lab');
//   if (paletteList == null) throw ArgumentError.notNull('paletteList');

//   return paletteList.firstWhere(
//     (item) {
//       final deltaE = getDeltaE(lab, item.lab);
//       return deltaE < optimalDeltaE;
//     },
//     orElse: () => null,
//   );
// }

// Rgba getAvgColor(List<Rgba> colors) {
//   if (colors == null) {
//     throw ArgumentError.notNull('colors');
//   }

//   int cnt = colors.length;
//   num r = 0;
//   num g = 0;
//   num b = 0;
//   num a = 0;

//   colors.forEach((color) {
//     r += color.r;
//     g += color.g;
//     b += color.b;
//     a += color.a;
//   });

//   return Rgba(
//     r: (r / cnt).ceil(),
//     g: (g / cnt).ceil(),
//     b: (b / cnt).ceil(),
//     a: (a / cnt).ceil(),
//   );
// }

// Lab rgbaToLab(Rgba color, {Rgba bg}) {
//   if (color == null) throw ArgumentError.notNull('color');

//   bg ??= Rgba(a: 255, r: 255, g: 255, b: 255);

//   //RGBA -> RGB
//   final pAlpha = (color.a ?? 255) / 255;
//   double pR = color.r.toDouble();
//   double pG = color.g.toDouble();
//   double pB = color.b.toDouble();

//   pR = (1 - pAlpha) * bg.r + pR * pAlpha;
//   pG = (1 - pAlpha) * bg.g + pG * pAlpha;
//   pB = (1 - pAlpha) * bg.b + pB * pAlpha;

//   //normalize colors
//   pR = pR / 255.0;
//   pG = pG / 255.0;
//   pB = pB / 255.0;

//   //convert to xyz
//   pR = (pR > 0.04045) ? math.pow((pR + 0.055) / 1.055, 2.4) : pR / 12.92;
//   pG = (pG > 0.04045) ? math.pow((pG + 0.055) / 1.055, 2.4) : pG / 12.92;
//   pB = (pB > 0.04045) ? math.pow((pB + 0.055) / 1.055, 2.4) : pB / 12.92;

//   double x = (pR * 0.4124 + pG * 0.3576 + pB * 0.1805) * 100;
//   double y = (pR * 0.2126 + pG * 0.7152 + pB * 0.0722) * 100;
//   double z = (pR * 0.0193 + pG * 0.1192 + pB * 0.9505) * 100;

//   //convert to lab
//   const double deltaLab = 0.008856;

//   x = (x / 95.047);
//   y = (y / 100.0);
//   z = (z / 108.883);

//   x = (x > deltaLab) ? math.pow(x, 1 / 3) : 7.787 * x + (16.0 / 116.0);
//   y = (y > deltaLab) ? math.pow(y, 1 / 3) : 7.787 * y + (16.0 / 116.0);
//   z = (z > deltaLab) ? math.pow(z, 1 / 3) : 7.787 * z + (16.0 / 116.0);

//   return Lab(
//     l: num.parse(((116.0 * y) - 16.0).toStringAsFixed(3)),
//     a: num.parse((500.0 * (x - y)).toStringAsFixed(3)),
//     b: num.parse((200.0 * (y - z)).toStringAsFixed(3)),
//   );
// }
