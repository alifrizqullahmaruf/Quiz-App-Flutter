class QuizQuestion {
  const QuizQuestion(this.text, this.answers);

  final String text;
  final List<String> answers;

  List<String> getShuffleAnswers() {
    final ShuffledList = List.of(answers);
    ShuffledList.shuffle();
    return ShuffledList;
  }
}
