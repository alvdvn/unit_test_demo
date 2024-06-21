
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:unit_test_demo/main.dart';
import 'package:unit_test_demo/screen/login/login_controller.dart';

void main() {
  // Test Widget TextField
  testWidgets('Test TextField Login', (final WidgetTester tester) async {

    await tester.pumpWidget(const MyApp());
    /// find Widget need check
    var textField = find.byType(TextField);
    /// Count check Widget
    expect(textField, findsNWidgets(2));

    //
    Finder emailField = find.byKey(const Key('email'));
    expect(emailField, findsOneWidget);
    await tester.enterText(emailField, 'ios@gmail.com');
    Finder passwordField = find.byKey(const Key('password'));
    expect(passwordField, findsOneWidget);
    await tester.enterText(passwordField, '12345');
    
    var loginButton = find.byType(ElevatedButton);
    expect(loginButton, findsOneWidget);
    await tester.tap(loginButton);
    await tester.pumpAndSettle();

    expect(find.text('Please enter valid email'), findsNothing);
    // expect(find.text('password is empty'), findsNothing);
  });
}