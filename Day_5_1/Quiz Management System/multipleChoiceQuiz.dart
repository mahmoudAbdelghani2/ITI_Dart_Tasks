import 'quiz.dart';

class MultipleChoiceQuiz extends Quiz {
  List<String>? _questions;

  List<String> get questions => _questions!;

  MultipleChoiceQuiz(String quizID, String topic, String difficultyLevel)
      : _questions = [],
        super(quizID, topic, difficultyLevel);
        
  void addQuestions(String question) {
    questions.add(question);
  }

  @override
  String getDifficultyLevel() {
    return "Multiple Choice: ${super.getDifficultyLevel()}";
  }
}