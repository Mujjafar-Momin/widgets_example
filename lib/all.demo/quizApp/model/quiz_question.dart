class QuizQuestion{
  QuizQuestion(this.question, this.answers);

  final String question;
  final List<String> answers;

  List<String> get shuffleAnswer{
    final shuffledList=List.of(answers);
    shuffledList.shuffle();
    return shuffledList;
  }
}