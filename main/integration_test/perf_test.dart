import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:integration_test/integration_test.dart';
import 'package:project/main.dart';

void main() {
  group('Scrolling actions and Performance', () {
// Singleton service that executes tests | Essential
    final binding = IntegrationTestWidgetsFlutterBinding.ensureInitialized();

// Set policy of rendering App frame | Optional
    binding.framePolicy = LiveTestWidgetsFlutterBindingFramePolicy.fullyLive;

// Interact through tester object | Essential
    testWidgets('Test #1 Scroll by items both ways', (tester) async {
// Build our app and trigger a frame | Essential
      await tester.pumpWidget(const MyApp());

      final listFinder = find.byType(Scrollable);
// controller => control scroll positions
      final scroller = tester
          .widget<ListView>(listFinder)
          .controller;

// watch Frame timing during actions
      await binding.watchPerformance(
            () async {
// Scroll down
          await scroller!.animateTo(
            1,
            duration: const Duration(seconds: 3),
            curve: Curves.linear,
          );
          await tester.pumpAndSettle();

// Scroll up
          await scroller.animateTo(
            -1,
            duration: const Duration(seconds: 3),
            curve: Curves.linear,
          );
          await tester.pumpAndSettle();
        },
// Collect performance report
        reportKey: 'scrolling_timeline',
      );
    });


    testWidgets('Test #2 Scroll by items one way', (tester) async {
      final binding = IntegrationTestWidgetsFlutterBinding.ensureInitialized();
// Build our app and trigger a frame | Essential
      await tester.pumpWidget(const MyApp());

      final listFinder = find.byType(Scrollable);
      final itemFinder = find.byKey(const ValueKey('item_50_text'));

      await binding.traceAction(
            () async {
// Scroll until the item to be found appears.
          await tester.scrollUntilVisible(
            itemFinder,
            500.0,
            scrollable: listFinder,
          );
        },
        reportKey: 'scrolling_timeline',
      );
    });
  });
}