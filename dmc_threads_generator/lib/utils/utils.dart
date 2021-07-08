import 'dart:math' as math;

const double kDeltaLab = 0.008856;
const Rgba kDefaultBgColor = Rgba(255, 255, 255, 255);

class Lab {
  const Lab(
    this.l,
    this.a,
    this.b,
  );

  final double l;
  final double a;
  final double b;
}

class Rgba {
  const Rgba(
    this.r,
    this.g,
    this.b,
    this.a,
  );

  final int r;
  final int g;
  final int b;
  final int a;
}

class Utils {
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

    return Lab(
      double.parse(((116.0 * y) - 16.0).toStringAsFixed(3)),
      double.parse((500.0 * (x - y)).toStringAsFixed(3)),
      double.parse((200.0 * (y - z)).toStringAsFixed(3)),
    );
  }

  static double _normalizeColor(double color) {
    return (color > 0.04045) ? math.pow((color + 0.055) / 1.055, 2.4).toDouble() : color / 12.92;
  }

  static double _normalizeXYZ(double t) {
    return (t > kDeltaLab) ? math.pow(t, 1 / 3).toDouble() : 7.787 * t + (16.0 / 116.0);
  }
}
