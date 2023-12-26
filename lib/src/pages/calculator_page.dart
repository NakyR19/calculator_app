import 'package:flutter/material.dart';
import '../widgets/display.dart';
import '../widgets/keyboard.dart';

class CalculatorPage extends StatefulWidget {
  const CalculatorPage({super.key});

  @override
  State<CalculatorPage> createState() => _CalculatorPageState();
}

class _CalculatorPageState extends State<CalculatorPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: const [
          Display(),
          Keyboard(),
        ],
      ),
    );
  }
}
