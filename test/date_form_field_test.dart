import 'package:date_input_form_field/date_input_form_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  testWidgets('DateInputFormField Test', (tester) async {
    await tester.pumpWidget(
      MaterialApp(
        home: Scaffold(
          body: DateInputFormField(),
        ),
      ),
    );
    expect(find.byType(DateInputFormField), findsOneWidget);
  });
}
