import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  const Button(
      {super.key,
      required this.char,
      required this.callback,
      this.color = numbersColor});
  const Button.operation(
      {super.key,
      required this.char,
      required this.callback,
      this.color = operationColor});
  const Button.equal(
      {super.key,
      required this.char,
      required this.callback,
      this.color = equalColor});
  const Button.delete(
      {super.key,
      required this.char,
      required this.callback,
      this.color = deleteColor});

  final String char;
  final Color color;
  static const operationColor = Color.fromRGBO(45, 51, 63, 1);
  static const equalColor = Color.fromRGBO(76, 194, 255, 1);
  static const numbersColor = Color.fromRGBO(56, 60, 66, 1);
  static const deleteColor = Color.fromRGBO(255, 0, 0, 1);
  final void Function(String) callback;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 1,
      child: Container(
        color: const Color.fromRGBO(30, 32, 37, 1),
        child: ElevatedButton(
          onPressed: () => callback(char),
          style: ElevatedButton.styleFrom(
            backgroundColor: color,
          ),
          child: Text(
            char,
            style: const TextStyle(fontSize: 30, fontWeight: FontWeight.w100),
          ),
        ),
      ),
    );
  }
}
