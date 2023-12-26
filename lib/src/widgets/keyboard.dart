import 'package:flutter/material.dart';
import 'button.dart';
import 'button_row.dart';

class Keyboard extends StatelessWidget {
  const Keyboard({super.key, required this.callback});
  final void Function(String) callback;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 500,
      child: Column(
        children: [
          ButtonRow(
            buttons: [
              Button.delete(
                char: 'AC',
                callback: callback,
              ),
              Button.operation(
                char: 'x²',
                callback: callback,
              ),
              Button.operation(
                char: '√x',
                callback: callback,
              ),
              Button.operation(
                char: '÷',
                callback: callback,
              ),
            ],
          ),
          Container(
            height: 1,
            color: const Color.fromRGBO(30, 32, 37, 1),
          ),
          ButtonRow(
            buttons: [
              Button(
                char: '7',
                callback: callback,
              ),
              Button(
                char: '8',
                callback: callback,
              ),
              Button(
                char: '9',
                callback: callback,
              ),
              Button.operation(
                char: 'x',
                callback: callback,
              ),
            ],
          ),
          Container(
            height: 1,
            color: const Color.fromRGBO(30, 32, 37, 1),
          ),
          ButtonRow(
            buttons: [
              Button(
                char: '4',
                callback: callback,
              ),
              Button(
                char: '5',
                callback: callback,
              ),
              Button(
                char: '6',
                callback: callback,
              ),
              Button.operation(
                char: '-',
                callback: callback,
              ),
            ],
          ),
          Container(
            height: 1,
            color: const Color.fromRGBO(30, 32, 37, 1),
          ),
          ButtonRow(
            buttons: [
              Button(
                char: '1',
                callback: callback,
              ),
              Button(
                char: '2',
                callback: callback,
              ),
              Button(
                char: '3',
                callback: callback,
              ),
              Button.operation(
                char: '+',
                callback: callback,
              ),
            ],
          ),
          Container(
            height: 1,
            color: const Color.fromRGBO(30, 32, 37, 1),
          ),
          ButtonRow(
            buttons: [
              Button(
                char: '( )',
                callback: callback,
              ),
              Button(
                char: '0',
                callback: callback,
              ),
              Button(
                char: ',',
                callback: callback,
              ),
              Button.equal(
                char: '=',
                callback: callback,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
