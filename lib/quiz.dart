import 'package:QuizGame/data/questions.dart';
import 'package:QuizGame/questions_screen.dart';
import 'package:QuizGame/results_screen.dart';
import 'package:flutter/material.dart';
import 'package:QuizGame/start_screen.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});
  @override
  State<Quiz> createState() {
    return _QuizState();
  }
}

class _QuizState extends State<Quiz> {
  // Widget? currentScreen; basic techinque
  List<String> selectedAnswers = [];

  void chooseAnswers(String ans) {
    selectedAnswers.add(ans);

    if (selectedAnswers.length == questions.length) {
      setState(() {
        currentScreen = "results_screen";
      });
    }
  }

  var currentScreen = "start_Screen"; // using string
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: bgcolor(), //bg color and it has start screen as a child
      ),
    );
  }

  void switchScreen() {
    setState(() {
      // defined in flutter ( it rerenders) Build method re_Executes
      //currentScreen = const QuestionsScreen(); basic method
      currentScreen = "Questions-Screen"; // using string
    });
  }

  void startScreen() {
    setState(() {
      // defined in flutter ( it rerenders) Build method re_Executes
      //currentScreen = const QuestionsScreen(); basic method
      currentScreen = "start_Screen"; // using string
      selectedAnswers = [];
    });
  }

  Widget bgcolor() {
    /* final screenWidget = currentScreen == "start_Screen"
        ? StartScreen(switchScreen)
        : const QuestionsScreen();*/
    Widget screenWidget = StartScreen(switchScreen);
    if (currentScreen == "Questions-Screen") {
      screenWidget = QuestionsScreen(
        onAnswerGiven: chooseAnswers,
      );
    } else if (currentScreen == "results_screen") {
      screenWidget = ResultsScreen(
        chosenAnswers: selectedAnswers,
        startScreen,
      );
    }

    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          // gradient, begin and end used by alignment with x and y cordinates
          colors: [
            Color.fromARGB(255, 138, 40, 160),
            Color.fromARGB(255, 128, 2, 151)
          ],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
      ),
      // child: currentScreen, basic method
      child: screenWidget, //  with Ternary operator
    );
  }
}
