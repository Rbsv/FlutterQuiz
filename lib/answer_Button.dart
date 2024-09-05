import 'package:flutter/material.dart';

class AnswerButton extends StatelessWidget {
  const AnswerButton(
      {super.key,
      required this.text,
      required this.func}); // constructor with required key

  final Function() func;
  final String text;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: func,
      style: ElevatedButton.styleFrom(
        backgroundColor: Color.fromARGB(255, 79, 1, 82),
        foregroundColor: Colors.white,
        shape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(40.0)),
        padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 10),
      ),
      child: Text(
        text,
        textAlign: TextAlign.center,
      ),
    );
  }
}
