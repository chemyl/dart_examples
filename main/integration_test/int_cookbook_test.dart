import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:integration_test/integration_test.dart';
import 'package:project/main.dart';

void main() {
  group('Iteration through elements', () {
    IntegrationTestWidgetsFlutterBinding.ensureInitialized();

    testWidgets('Perform actions on list Items', (tester) async {
      await tester.pumpWidget(const MyApp());

// Create a list of items.
      final listItems = [
        '1_item',
        '2_item',
        '3_item',
      ];

// Iterate through items and perform actions witch checks.
      for (var item in listItems) {
        await tester.tap(find.byKey(ValueKey(item)));
        await tester
            .pumpAndSettle(const Duration(seconds: 2)); //set delay after tap
        expect(find.text('message after actions'), findsOneWidget);
      }
    });


    testWidgets('Scroll to element and check', (tester) async {
      await tester.pumpWidget(const MyApp());

      final itemFinder = find.byKey(const ValueKey('value'));
// Scroll until the item to be found appears.
      await tester.scrollUntilVisible(
        itemFinder,
        500.0,
      );
// check item has textSpan
      expect(tester
          .widget<Text>(itemFinder)
          .textSpan, 'Item_text');
    });

    testWidgets('Open through Material App', (tester) async {
      await tester.pumpWidget(const MaterialApp(
        home: MyApp(),
      ));

// tap on first 'add_circle' icon
      await tester.tap(find
          .byIcon(Icons.add_circle)
          .first);

// Fling i.e scroll down.
      await tester.fling(find.byType(ListView), const Offset(0, -200), 3000);

// Verify there is nothing widget with text 'item'
      expect(find.text('item'), findsNothing);
// Verify there is widget with 'add_box' icon
      expect(find.byIcon(Icons.add_box), findsWidgets);

// Verify first widget has text 'item text'
      expect(
        tester
            .firstWidget<Text>(find.byKey(const ValueKey('item')))
            .data,
        equals('item text'),
      );

// Check if any alarm icon find.
      expect(find.byIcon(Icons.access_alarm), findsNothing);
// expect one ToolTip with 'tooltip text'
      expect(find.widgetWithText(Tooltip, 'tooltip text'), findsOneWidget);
// expect one toggleButtons with format_underline icons
      expect(find.widgetWithIcon(ToggleButtons, Icons.format_underline),
          findsOneWidget);
// expect one widget centered with 'About' text
      expect(find.widgetWithText(Center, 'About'), findsOneWidget);
    });
  });
}
