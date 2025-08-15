import 'quiz.dart';

class EssayQuiz extends Quiz {
  List<String>? _questions;

  List<String> get questions => _questions!;

  EssayQuiz(String quizID, String topic, String difficultyLevel)
      : _questions = [],
        super(quizID, topic, difficultyLevel);

  void addQuestions(String question) {
    questions.add(question);
  }

  @override
  String getDifficultyLevel() {
    return "Essay: ${super.getDifficultyLevel()}";
  }
}