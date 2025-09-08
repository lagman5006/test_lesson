import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:integration_test/integration_test.dart';
import 'package:test_lesson/main.dart';

void main() {
  IntegrationTestWidgetsFlutterBinding.ensureInitialized();

  testWidgets('Full app test: increment counter', (WidgetTester tester) async {
    await tester.pumpWidget(const MyApp());

    expect(find.byKey(const Key('counterText')), findsOneWidget);
    expect(find.text('0'), findsOneWidget);

    final fab = find.byKey(const Key('incrementButton'));
    await tester.tap(fab);
    await tester.pump();

    expect(find.text('1'), findsOneWidget);
  });
}
