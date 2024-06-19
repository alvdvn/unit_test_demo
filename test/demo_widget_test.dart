import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:get/get.dart';
import 'package:unit_test_demo/screen/demo_widget.dart';
import 'package:unit_test_demo/screen/demo_controller.dart';

void main() {
  setUp(() {
    // Initialize Get for the tests
    Get.testMode = true;
  });

  testWidgets('DemoWidget test', (WidgetTester tester) async {
    // Mock DemoController for testing
    final DemoController mockController = DemoController();

    // Build our widget and trigger a frame.
    await tester.pumpWidget(
      GetMaterialApp(
        home: Scaffold(
          body: DemoWidget(),
        ),
        // Provide the DemoController instance as a dependency
        initialBinding: BindingsBuilder(() {
          Get.lazyPut<DemoController>(() => mockController);
        }),
      ),
    );

    // Verify initial screen content (for example, check for a specific text)
    expect(find.text('Home Screen Content'), findsOneWidget);

    // Simulate tapping on the home icon
    await tester.tap(find.byIcon(Icons.home));
    await tester.pump(); // Rebuild the widget after the tap

    // Verify content after changing to tab 0
    expect(find.text('Item 0'), findsOneWidget);

    await tester.tap(find.text('Item 0'));
    await tester.pump();
    // Verify if the SnackBar is shown
    expect(find.text('Item 0'), findsNWidgets(2));
    await tester.runAsync(() => Future.delayed(Duration(seconds: 2)));

    // Simulate tapping on another icon (for example, library books icon)
    await tester.tap(find.byIcon(Icons.library_books_rounded));
    await tester.pump();

    // Verify content after changing to tab 1
    expect(find.text('Library Screen Content'), findsOneWidget);
    expect(find.text('Item 11'), findsNothing); // Ensure previous screen content is not visible

    // Verify if controller state is updated correctly
    expect(mockController.tabIndex.value, 1);

    // Simulate tapping on contact mail icon
    await tester.tap(find.byIcon(Icons.contact_mail_outlined));
    await tester.pump();

    // Verify content after changing to tab 2
    expect(find.text('Contact Screen Content'), findsOneWidget);
    expect(find.text('Library Screen Content'), findsNothing); // Ensure previous screen content is not visible

    // Verify if controller state is updated correctly
    expect(mockController.tabIndex.value, 2);

    // Simulate tapping on person icon
    await tester.tap(find.byIcon(Icons.person));
    await tester.pump();

    // Verify content after changing to tab 3
    expect(find.text('Profile Screen Content'), findsOneWidget);
    expect(find.text('Contact Screen Content'), findsNothing); // Ensure previous screen content is not visible

    // Verify if controller state is updated correctly
    expect(mockController.tabIndex.value, 3);

    // Now let's test clicking on an item in the Home screen
    // One in the list, one in the SnackBar
  });
}