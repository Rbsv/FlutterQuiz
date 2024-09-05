import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class StartScreen extends StatelessWidget {
  const StartScreen(this.startQuizFunc, {super.key});
  // startQuizFunc: passed as a function with return type void and takes no parameters similar to Action in C#
  final void Function() startQuizFunc;
  @override
  Widget build(context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset('assets/images/quiz-logo.png',
              width: 300, color: const Color.fromARGB(175, 255, 255, 255)),
          const SizedBox(height: 40),
          Text(
            "Flutter Quiz",
            style: GoogleFonts.lato(
              color: Color.fromARGB(255, 246, 212, 252),
              fontSize: 24,
            ),
          ),
          const SizedBox(
            height: 30, //extra space for button
          ),
          OutlinedButton.icon(
            onPressed: startQuizFunc,
            style: OutlinedButton.styleFrom(
              foregroundColor: Colors.white,
            ),
            icon: const Icon(Icons.arrow_right_alt),
            label: const Text('Start Quiz'),
          )
        ],
      ),
    );
  } // build method should be written like this which return widget
}
