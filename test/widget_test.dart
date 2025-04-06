// This is a basic Flutter widget test.
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:provider/provider.dart'; // Add this import
import 'package:practicle_test/main.dart';

// Import your theme provider
// Replace with your actual import path
import 'package:practicle_test/providers/theme_provider.dart'; 

void main() {
  testWidgets('Counter increments smoke test', (WidgetTester tester) async {
    // Create a ThemeProvider instance for testing
    final themeProvider = ThemeProvider(); // Adjust constructor if needed
    
    // Wrap your app with the necessary providers
    await tester.pumpWidget(
      MultiProvider(
        providers: [
          ChangeNotifierProvider<ThemeProvider>.value(
            value: themeProvider,
          ),
          // Add any other providers your app needs
        ],
        child: const MyApp(),
      ),
    );

    // Verify that our counter starts at 0.
    expect(find.text('0'), findsOneWidget);
    expect(find.text('1'), findsNothing);

    // Tap the '+' icon and trigger a frame.
    await tester.tap(find.byIcon(Icons.add));
    await tester.pump();

    // Verify that our counter has incremented.
    expect(find.text('0'), findsNothing);
    expect(find.text('1'), findsOneWidget);
  });
}