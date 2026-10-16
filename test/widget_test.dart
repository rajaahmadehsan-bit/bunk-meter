import 'package:flutter_test/flutter_test.dart';
import 'package:bunk_meter/main.dart';

void main() {
  testWidgets('Bunk Meter app loads', (WidgetTester tester) async {
    await tester.pumpWidget(const BunkMeterApp());

    // The splash screen shows the app name
    expect(find.text('Bunk Meter'), findsOneWidget);
  });
}
