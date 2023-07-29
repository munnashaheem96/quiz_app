class QuizQuestion {
  const QuizQuestion(this.text, this.answers);

  final String text;
  final List<String> answers;

  // to shuffle answers step1
  List<String> getShuffledAnswers() {
    final shuffledList = List.of(answers);
    shuffledList.shuffle();
    return shuffledList;
  }
}
