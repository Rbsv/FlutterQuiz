import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ResultsScreen extends StatelessWidget {
  const ResultsScreen({super.key, required this.chosenAnswers});
  final List<String> chosenAnswers;
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
            const Text("List of Answers and Questions"),
            const SizedBox(
              height: 30,
            ),
            TextButton(
              onPressed: () {},
              child: const Text("Restart"),
            )
          ],
        ),
      ),
    );
  }
}
