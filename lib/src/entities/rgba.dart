import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'rgba.g.dart';

abstract class Rgba implements Built<Rgba, RgbaBuilder> {
  Rgba._();

  factory Rgba([Function(RgbaBuilder builder)? updates]) {
    return _$Rgba(
      (RgbaBuilder builder) {
        _initializeBuilder(builder);
        builder.update(updates);
      },
    );
  }

  static void _initializeBuilder(RgbaBuilder builder) => builder..a = 255;

  int get r;
  int get g;
  int get b;
  int get a;

  static Serializer<Rgba> get serializer => _$rgbaSerializer;
}
