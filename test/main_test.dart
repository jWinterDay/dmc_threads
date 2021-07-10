import 'package:built_collection/src/map.dart';
import 'package:dmc_threads/dmc_threads.dart';
import 'package:test/test.dart';

/// to run tests write `flutter test test/main_test.dart` in terminal
void main() {
  group('dmc', () {
    final BuiltMap<String, ThreadType> dmcMap = Palette.dmcMap;

    test('known code', () {
      final ThreadType? dmc = Palette.findDmcByCode('3713');

      expect(dmc?.code, '3713');
    });

    test('unknown code', () {
      final ThreadType? dmc = Palette.findDmcByCode('unknown');

      expect(dmc, isNull);
    });

    test('rgba to lab', () {
      // 'Gray Green Dark',
      // '3768',
      // rgb: '{"B": 127, "G": 127, "R": 101}',
      // lab: '{"A": -9.30291, "B": -3.09718, "L": 51.2415}',
      // hsl: '{"H": 180, "L": 44.7058826684952, "S": 11.4035077393055}')
      final Lab lab = Palette.rgbaToLab(r: 101, g: 127, b: 127);

      expect(lab.l.round(), 51, reason: 'L: ${lab.l.floor()}');
      expect(lab.a.round(), -9, reason: 'A: ${lab.a.floor()}');
      expect(lab.b.round(), -3, reason: 'B: ${lab.b.floor()}');
    });

    test('map length', () {
      expect(dmcMap.length, isPositive);
    });

    test('delta E all zeros', () {
      final Lab lab1 = Lab((LabBuilder updates) {
        return updates
          ..l = 0
          ..a = 0
          ..b = 0;
      });

      final Lab lab2 = Lab((LabBuilder updates) {
        return updates
          ..l = 0
          ..a = 0
          ..b = 0;
      });

      final double deltaE = Palette.getDeltaE(lab1, lab2);

      expect(deltaE, 0.0);
    });

    test('delta E l', () {
      final Lab lab1 = Lab((LabBuilder updates) {
        return updates
          ..l = 2
          ..a = 0
          ..b = 0;
      });

      final Lab lab2 = Lab((LabBuilder updates) {
        return updates
          ..l = 0
          ..a = 0
          ..b = 0;
      });

      expect(Palette.getDeltaE(lab1, lab2), 2);
      expect(Palette.getDeltaE(lab2, lab1), 2);
    });

    test('find nearest black color', () {
      final Lab blackLab = Lab((LabBuilder updates) {
        return updates
          ..l = 0
          ..a = 0
          ..b = 0;
      });

      final ThreadType? blackDmc = Palette.findNearestPalette(blackLab);

      expect(blackDmc?.code, '310');
    });

    test('not exists color', () {
      final Lab blackLab = Lab((LabBuilder updates) {
        return updates
          ..l = -1000
          ..a = -1000
          ..b = -1000;
      });

      final ThreadType? blackDmc = Palette.findNearestPalette(blackLab);

      expect(blackDmc, isNull);
    });
  });
}
