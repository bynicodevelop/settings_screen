import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:settings_screen/settings_screen.dart';

void main() {
  testWidgets('Verify that the settings screen', (WidgetTester tester) async {
    // Build our app and trigger a frame.

    bool confirm = false;

    await tester.pumpWidget(
      MaterialApp(
        home: Scaffold(
          body: settingsScreen(
            [
              {
                "title": "General",
                "subtitle": "General settings",
                "onTap": () {
                  confirm = true;
                },
                "leadingIcon": Icons.settings,
              },
              {
                "title": "Security",
                "subtitle": "Security settings",
                "onTap": () {},
                "leadingIcon": Icons.security,
              },
            ],
          ),
        ),
      ),
    );

    // Verify General is visible
    expect(find.text('General'), findsOneWidget);

    // Verify Security is visible
    expect(find.text('Security'), findsOneWidget);

    // Verify icon setting is visible
    expect(find.byIcon(Icons.settings), findsOneWidget);

    // Verify icon security is visible
    expect(find.byIcon(Icons.security), findsOneWidget);

    // Verify General list tile is clickable
    await tester.tap(find.text('General'));

    // Verify confirm is true
    expect(confirm, true);

    // Verify trailing is arrow_forward_ios icon
    expect(find.byIcon(Icons.arrow_forward_ios), findsWidgets);
  });

  testWidgets('Verify that the settings screen is displayed with custom icon',
      (WidgetTester tester) async {
    // Build our app and trigger a frame.

    await tester.pumpWidget(
      MaterialApp(
        home: Scaffold(
          body: settingsScreen(
            [
              {
                "title": "General",
                "subtitle": "General settings",
                "onTap": () {},
                "leadingIcon": Icons.settings,
              },
              {
                "title": "Other",
                "subtitle": "General settings",
                "onTap": () {},
                "leadingIcon": Icons.settings,
              },
            ],
            globalTrailingIcon: Icons.arrow_circle_right_sharp,
          ),
        ),
      ),
    );

    // Verify trailing is arrow_forward_ios icon
    expect(find.byIcon(Icons.arrow_circle_right_sharp), findsWidgets);
  });
}
