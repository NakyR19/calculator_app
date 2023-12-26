import 'package:flutter/material.dart';
import 'package:auto_size_text/auto_size_text.dart';

class Display extends StatelessWidget {
  const Display({super.key, required this.char});
  final String char;
  @override
  Widget build(BuildContext context) {
    return Expanded(
        flex: 1,
        child: Container(
          color: const Color.fromRGBO(30, 32, 37, 1),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: AutoSizeText(
                  char,
                  minFontSize: 20,
                  maxFontSize: 80,
                  maxLines: 1,
                  textAlign: TextAlign.end,
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 80,
                    fontWeight: FontWeight.w200,
                    decoration: TextDecoration.none,
                  ),
                ),
              ),
            ],
          ),
        ));
  }
}
