import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:flutter_application_3/main.dart';

void main() {
  testWidgets("La app muestra 3 botones correctamente", (WidgetTester tester) async {

    // Cargar la app
    await tester.pumpWidget(const MiApp());

    // Verificar que existe un Scaffold
    expect(find.byType(Scaffold), findsOneWidget);

    // Verificar que existe un Container
    expect(find.byType(Container), findsOneWidget);

    // Verificar que existe un Column
    expect(find.byType(Column), findsOneWidget);

    // Verificar que existen los 3 botones
    expect(find.text("Botón 1"), findsOneWidget);
    expect(find.text("Botón 2"), findsOneWidget);
    expect(find.text("Botón 3"), findsOneWidget);

    // Verificar que hay EXACTAMENTE 3 ElevatedButton
    expect(find.byType(ElevatedButton), findsNWidgets(3));
  });
}
