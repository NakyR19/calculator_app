import 'package:calculator_app/src/models/attributes.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import '../widgets/display.dart';
import '../widgets/keyboard.dart';

class CalculatorPage extends StatefulWidget {
  const CalculatorPage({super.key});

  @override
  State<CalculatorPage> createState() => _CalculatorPageState();
}

class _CalculatorPageState extends State<CalculatorPage> {
  final Attributes attributes = Attributes();
  _onPressed(String char) {
    setState(() {
      attributes.applyCommand(char);
    });
  }

  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);

    return Scaffold(
      body: Column(
        children: [
          Display(
            char: attributes.value,
          ),
          Keyboard(callback: _onPressed),
        ],
      ),
    );
  }
}
