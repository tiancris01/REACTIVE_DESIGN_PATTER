import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:reactomic_design/atoms/bottons/reactomic_main_button.dart';

void reactomicMainButton() {
  setUp(() {});

  Widget createWidgetUnderTest() {
    return MaterialApp(
      home: Scaffold(
        body: ReactomicMainButton(label: 'Reactomic Design', onPressed: () {}),
      ),
    );
  }

  testWidgets(
    "title is displayed",
    (WidgetTester tester) async {
      await tester.pumpWidget(createWidgetUnderTest());
      expect(find.text('Reactomic Design'), findsOneWidget);
    },
  );
}
