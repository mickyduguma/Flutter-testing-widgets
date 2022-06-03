import 'package:flutter_test/flutter_test.dart';
import 'package:flutter/material.dart';
import 'package:frist_test/main.dart';
void main() {
 testWidgets('Test form', (WidgetTester tester) async {
  
   await tester.pumpWidget(MyApp());

   await tester.enterText(find.byKey(Key("textField")),'test');
   await tester.enterText(find.byKey(Key("secondTextfield") ), 'test');
   await tester.tap(find.byType(ElevatedButton));

 });

}
