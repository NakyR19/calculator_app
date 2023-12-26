import 'package:flutter/material.dart';

class Display extends StatelessWidget {
  const Display({super.key});
  @override
  Widget build(BuildContext context) {
    return Expanded(
        flex: 1,
        child: Container(
          color: Colors.black12,
          child: const Text("Display"),
        ));
  }
}
