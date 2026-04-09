import 'package:flutter_test/flutter_test.dart';
import 'package:gestion_parqueos_mobile/main.dart';

void main() {
  testWidgets('renders app title', (tester) async {
    await tester.pumpWidget(const GestionParqueosApp());
    expect(find.text('Gestión de Parqueos'), findsOneWidget);
  });
}
