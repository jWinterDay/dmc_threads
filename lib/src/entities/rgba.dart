import 'package:freezed_annotation/freezed_annotation.dart';

part 'rgba.freezed.dart';
part 'rgba.g.dart';

@freezed
class Rgba with _$Rgba {
  const factory Rgba(
    int r,
    int g,
    int b, {
    @Default(255) int a,
  }) = _Rgba;

  factory Rgba.fromJson(Map<String, dynamic> json) => _$RgbaFromJson(json);
}
