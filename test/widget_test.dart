import 'package:flutter/cupertino.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:test_lesson/main.dart';

void main() {
  testWidgets("Counter increments when FAB is tapped", (WidgetTester tester) async {
    await tester.pumpWidget(const MyApp());

    expect(find.byKey(const Key('counterText')), findsOneWidget);
    expect(find.text("0"), findsOneWidget);

    await tester.tap(find.byKey(const Key('incrementButton')));
    await tester.pump();

    expect(find.byKey(const Key('counterText')), findsOneWidget);
    expect(find.text("1"), findsOneWidget);
  });
}