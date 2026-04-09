import 'package:flutter/material.dart';

void main() {
  runApp(const GestionParqueosApp());
}

class GestionParqueosApp extends StatelessWidget {
  const GestionParqueosApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Gestión de Parqueos',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
      ),
      home: const Scaffold(
        body: Center(
          child: Text('Gestión de Parqueos'),
        ),
      ),
    );
  }
}
