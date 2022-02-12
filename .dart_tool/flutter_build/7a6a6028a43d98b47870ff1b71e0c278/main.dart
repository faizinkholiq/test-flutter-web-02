// @dart=2.16

import 'dart:ui' as ui;

import 'package:test_flutter_web/main.dart' as entrypoint;

Future<void> main() async {
  await ui.webOnlyInitializePlatform();
  entrypoint.main();
}
