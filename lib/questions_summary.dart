import 'package:flutter/material.dart';

class QuestionsSummary extends StatelessWidget {
  const QuestionsSummary(this.datareceived, {super.key});

  final List<Map<String, Object>> datareceived;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: datareceived.map(
        (d) {
          return Row(
            children: [
              Text(((d["question_index"] as int) + 1).toString()),
              Expanded(
                child: Column(
                  children: [
                    Text((d['question'].toString())),
                    const SizedBox(
                      height: 5,
                    ),
                    Text(d['correctAnswer'] as String),
                    Text(d['user_answer'] as String),
                  ],
                ),
              ),
            ],
          );
        },
      ).toList(),
    );
  }
}
