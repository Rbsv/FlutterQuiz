class QuizQuesiton {
  const QuizQuesiton(this.text, this.answesr);

  final String text;
  final List<String> answesr;
  List<String> getShuffledAnswers() {
    final shuffledList = List.of(answesr);
    shuffledList.shuffle();
    return shuffledList;
  }
}
