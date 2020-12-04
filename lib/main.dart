import 'package:calbmi/Resultado.dart';
import 'package:flutter/material.dart';

import 'Calculadora.dart';

void main() {
  runApp(MainApp());
}

class MainApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        scaffoldBackgroundColor: Color(0xFF0A0E21),
        brightness: Brightness.dark,
        primaryColor: Color(0xFF0A0E21),
        accentColor: Colors.pink[600],
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => Calculadora(),
        '/resultado': (context) => Resultado(),
      },
    );
  }
}
