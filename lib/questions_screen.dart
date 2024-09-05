import 'package:QuizGame/answer_Button.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:QuizGame/data/questions.dart';
import 'package:google_fonts/google_fonts.dart';

class QuestionsScreen extends StatefulWidget {
  const QuestionsScreen({super.key, required this.onAnswerGiven});

  final void Function(String ans) onAnswerGiven;
  @override
  State<QuestionsScreen> createState() {
    return _QuestionsScreenState();
  }
}

class _QuestionsScreenState extends State<QuestionsScreen> {
  int currentQuestionIndex = 0;

  void changeQuestion() {
    setState(() {
      if (questions.length - 1 > currentQuestionIndex) {
        currentQuestionIndex++;
      } else {
        //finish code here
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    final currentQuestion = questions[currentQuestionIndex];
    return SizedBox(
      width: double.infinity,
      child: Container(
        margin: const EdgeInsets.all(30),
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment:
                CrossAxisAlignment.stretch, // horizontally stretch to edge
            children: [
              Text(
                currentQuestion.text,
                style: GoogleFonts.lato(
                  color: const Color.fromARGB(255, 247, 181, 249),
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(
                height: 30,
              ),
              ...currentQuestion.getShuffledAnswers().map((item) {
                // ... is a operator to seperate out iterable
                return AnswerButton(
                    text: item,
                    func: () {
                      changeQuestion();
                      widget.onAnswerGiven(item);
                    });
              }),
            ]),
      ),
    );
  }
}
