import 'package:flutter/material.dart';

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
          const SizedBox(height: 20),
          const Text(
            "Flutter Quiz",
            style: TextStyle(
              color: Color.fromARGB(255, 238, 153, 253),
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
