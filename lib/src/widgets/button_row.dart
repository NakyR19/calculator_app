import 'package:flutter/material.dart';
import 'button.dart';

class ButtonRow extends StatelessWidget {
  const ButtonRow({super.key, required this.buttons});
  final List<Button> buttons;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 1,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: buttons.fold(<Widget>[], (list, button) {
          if (list.isEmpty) {
            list.add(button);
          } else {
            list.addAll(
              [
                Container(
                  width: 2,
                  color: const Color.fromRGBO(30, 32, 37, 1),
                ),
                button
              ],
            );
          }
          return list;
        }),
      ),
    );
  }
}
