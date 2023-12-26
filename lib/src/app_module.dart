import 'package:flutter/material.dart';
import 'pages/calculator_page.dart';

class CalculatorApp extends StatelessWidget {
  const CalculatorApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(colorScheme: const ColorScheme.highContrastLight()),
      home: const CalculatorPage(),
    );
  }
}
