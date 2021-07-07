import 'dart:async';
import 'dart:convert';
import 'dart:io';
// import 'dart:typed_data';
// import 'package:analyzer/dart/ast/ast.dart';
// import 'package:analyzer/dart/constant/value.dart';
// import 'package:analyzer/dart/element/element.dart';
// import 'package:analyzer/dart/element/type.dart';
import 'package:build/build.dart';
import 'package:dmc_threads_generator/dmc_content.dart';
// import 'package:built_collection/built_collection.dart';
import 'package:source_gen/source_gen.dart';
// import 'package:code_builder/code_builder.dart';
// import 'package:dart_style/dart_style.dart';

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
      final String hex = dataMap['hex'].toString();

      // ..lab = Lab((LabBuilder b3) {
      //         return b3
      //           ..l = 92.196
      //           ..a = 9.944
      //           ..b = 3.638;
      //       }).toBuilder();

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
            ..hex = '$hex';
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

    // output.write('''
    // BuiltList<Dmc> _dmc() {
    //   return BuiltList<Dmc>.of(<Dmc>[
    //     $data
    //   ]);
    // }
    // ''');

    return output.toString();
  }

  @override
  String toString() => 'DmcThreadsGenerator';
}
