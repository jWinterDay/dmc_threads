import 'package:freezed_annotation/freezed_annotation.dart';

part 'lab.freezed.dart';
part 'lab.g.dart';

@freezed
class Lab with _$Lab {
  const factory Lab(
    double l,
    double a,
    double b,
  ) = _Lab;

  factory Lab.fromJson(Map<String, dynamic> json) => _$LabFromJson(json);
}
