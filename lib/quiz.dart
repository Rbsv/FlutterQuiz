import 'package:adv_basics/questions_screen.dart';
import 'package:flutter/material.dart';
import 'package:adv_basics/start_screen.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});
  @override
  State<Quiz> createState() {
    return _QuizState();
  }
}

class _QuizState extends State<Quiz> {
  // Widget? currentScreen; basic techinque
  var currentScreen = "start_Screen"; // using string
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: bgcolor(), //bg color and it has start screen as a child
      ),
    );
  }

  void initState() {
    // currentScreen = StartScreen(switchScreen); old technique

    super.initState();
  }

  void switchScreen() {
    setState(() {
      // defined in flutter ( it rerenders) Build method re_Executes
      //currentScreen = const QuestionsScreen(); basic method
      currentScreen = "Questions-Screen"; // using string
    });
  }

  Widget bgcolor() {
    /* final screenWidget = currentScreen == "start_Screen"
        ? StartScreen(switchScreen)
        : const QuestionsScreen();*/
    Widget screenWidget = StartScreen(switchScreen);
    if (currentScreen == "Questions-Screen") {
      screenWidget = const QuestionsScreen();
    }

    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          // gradient, begin and end used by alignment with x and y cordinates
          colors: [Colors.deepPurple, Color.fromARGB(255, 217, 51, 247)],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
      ),
      // child: currentScreen, basic method
      child: screenWidget, //  with Ternary operator
    );
  }
}
