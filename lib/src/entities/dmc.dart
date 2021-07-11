import 'package:dmc_threads/src/entities/lab.dart';
import 'package:dmc_threads/src/entities/rgba.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'dmc.freezed.dart';
part 'dmc.g.dart';

@freezed
class Dmc with _$Dmc {
  const factory Dmc(
    String name,
    String code,
    Rgba rgba,
    String hex, {
    Lab? lab,
  }) = _Dmc;

  factory Dmc.fromJson(Map<String, dynamic> json) => _$DmcFromJson(json);
}
