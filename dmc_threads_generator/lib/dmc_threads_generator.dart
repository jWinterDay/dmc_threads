import 'dart:async';
import 'dart:convert';
import 'package:build/build.dart';
import 'package:dmc_threads_generator/dmc_content.dart';
import 'package:dmc_threads_generator/utils/utils.dart';
import 'package:source_gen/source_gen.dart';
import 'package:dmc_threads_annotation/dmc_threads_annotation.dart';

class DmcThreadsGeneratorGenerator extends Generator {
  DmcThreadsGeneratorGenerator(this.configs);

  final Map<String, Object?> configs;

  /// {
  ///    "floss": "3713",
  ///    "description": "Salmon Very Light",
  ///    "r": 255,
  ///    "g": 226,
  ///    "b": 226,
  ///    "hex": "FFE2E2",
  ///    "row": "row 01-01"
  ///  }
  @override
  Future<String> generate(LibraryReader library, BuildStep _) async {
    final Iterable<AnnotatedElement> dmc = library.annotatedWith(const TypeChecker.fromRuntime(DmcThreadsAnnotation));

    if (dmc.isEmpty) {
      return '';
    }

    final List<dynamic> dmcRawList = json.decode(DmcContent.rawData) as List<dynamic>;

    final String data = dmcRawList.map((dynamic rawData) {
      final Map<String, dynamic> dataMap = rawData as Map<String, dynamic>;

      final String name = dataMap['description'].toString();
      final String code = dataMap['floss'].toString();
      final String r = dataMap['r'].toString();
      final String g = dataMap['g'].toString();
      final String b = dataMap['b'].toString();
      final String? a = dataMap['a']?.toString();
      final String hex = dataMap['hex'].toString();

      final Lab lab = Utils.rgbaToLab(
        r: int.parse(r),
        g: int.parse(g),
        b: int.parse(b),
        a: a == null ? 255 : int.parse(a),
      );

      return '''
      Dmc((DmcBuilder b) {
        return b
          ..name = '$name'
          ..code = '$code'
          ..rgba = Rgba((RgbaBuilder b2) {
            return b2
              ..r = $r
              ..g = $g
              ..b = $b;
          }).toBuilder()
          ..hex = '$hex'
          ..lab = Lab((LabBuilder b3) {
            return b3
                ..l = ${lab.l}
                ..a = ${lab.a}
                ..b = ${lab.b};
            }).toBuilder();
        }),
      ''';
    }).join();

    final StringBuffer output = StringBuffer();

    output.write('''
    Iterable<Dmc> _dmc() {
      return <Dmc>[
        $data
      ];
    }
    ''');

    return output.toString();
  }

  @override
  String toString() => 'DmcThreadsGenerator';
}
