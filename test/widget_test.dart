import 'package:flutter_test/flutter_test.dart';

import 'package:menu_restaurant/main.dart';

void main() {
  testWidgets('Changement de catégorie', (WidgetTester tester) async {
    await tester.pumpWidget(const MenuApp());

    expect(find.text('Hold-Up'), findsOneWidget);

    await tester.tap(find.text('Desserts'));
    await tester.pump();

    expect(find.text('Brownie'), findsOneWidget);
    expect(find.text('Hold-Up'), findsNothing);
  });
}
