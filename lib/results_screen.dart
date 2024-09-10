import 'package:QuizGame/data/questions.dart';
import 'package:QuizGame/questions_summary.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ResultsScreen extends StatelessWidget {
  const ResultsScreen(this.restartClicked,
      {super.key, required this.chosenAnswers});
  final List<String> chosenAnswers;
  final Function() restartClicked;

  List<Map<String, Object>> getSummaryData() {
    final List<Map<String, Object>> summary = [];

    for (int i = 0; i < chosenAnswers.length; i++) {
      summary.add(
        {
          'question_index': i,
          'question': questions[i].text,
          'correctAnswer': questions[i].answesr[0],
          'user_answer': chosenAnswers[i],
        },
      );
      print(questions[i].text);
    }

    return summary;
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return SizedBox(
      width: double.infinity,
      child: Container(
        margin: const EdgeInsets.all(40),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Anser done correctly X out of Y",
              style: GoogleFonts.lato(
                color: const Color.fromARGB(255, 240, 202, 243),
                fontSize: 24,
              ), // google font Lato
            ),
            const SizedBox(
              height: 30,
            ),
            QuestionsSummary(getSummaryData()),
            const SizedBox(
              height: 30,
            ),
            TextButton(
              onPressed: restartClicked,
              child: const Text("Restart"),
            )
          ],
        ),
      ),
    );
  }
}
