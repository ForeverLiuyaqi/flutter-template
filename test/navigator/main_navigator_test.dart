import 'package:flutter/cupertino.dart';
import 'package:flutter_template/navigator/main_navigator.dart';
import 'package:flutter_test/flutter_test.dart';

import '../di/test_kiwi_util.dart';
import '../screen/seed.dart';
import '../util/test_util.dart';

void main() {
  setUp(() async {
    await TestKiwiUtil.init();
  });

  testWidgets('Test main navigator widget initial state', (tester) async {
    seedGlobalViewModel();

    final testWidget = await TestUtil.loadFlutterTemplateApp(tester);
    await TestUtil.takeScreenshotForAllSizes(tester, testWidget, 'main_navigator_initial_screen');
  });
}
