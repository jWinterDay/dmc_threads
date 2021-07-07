import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'lab.g.dart';

abstract class Lab implements Built<Lab, LabBuilder> {
  Lab._();

  factory Lab([Function(LabBuilder builder)? updates]) {
    return _$Lab(
      (LabBuilder builder) {
        _initializeBuilder(builder);
        builder.update(updates);
      },
    );
  }

  static void _initializeBuilder(LabBuilder builder) => builder;
  // ..pincodeLockAfterAppPausePeriod = 60;

  double get l;
  double get a;
  double get b;

  static Serializer<Lab> get serializer => _$labSerializer;
}
