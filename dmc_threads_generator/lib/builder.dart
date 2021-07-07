import 'package:build/build.dart';
import 'package:source_gen/source_gen.dart';

import 'package:dmc_threads_generator/dmc_threads_generator.dart';

Builder dmcThreads(BuilderOptions options) {
  return SharedPartBuilder(
    <Generator>[DmcThreadsGeneratorGenerator(options.config)],
    'dmc',
    allowSyntaxErrors: true,
  );
}
