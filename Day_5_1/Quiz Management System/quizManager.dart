import 'essayQuiz.dart';
import 'multipleChoiceQuiz.dart';
import 'quiz.dart';
import 'student.dart';

class QuizManager {
  List<Quiz> quizzes = [];
  List<Student> students = [];

  void createQuiz(
    String type,
    String quizID,
    String topic,
    String difficultyLevel,
  ) {
    if (quizzes.any((q) => q.getQuizID() == quizID)) {
      print("Quiz with ID '$quizID' already exists.");
      return;
    }
    if (type == 'Multiple Choice') {
      quizzes.add(MultipleChoiceQuiz(quizID, topic, difficultyLevel));
      print("Multiple Choice Quiz created with ID: $quizID");
    } else if (type == 'Essay') {
      quizzes.add(EssayQuiz(quizID, topic, difficultyLevel));
      print("Essay Quiz created with ID: $quizID");
    } else {
      print("Invalid quiz type.");
    }
  }

  void addQuestionToQuiz(String quizID, String question) {
    for (var quiz in quizzes) {
      if (quiz.getQuizID() == quizID) {
        if (quiz is MultipleChoiceQuiz) {
          quiz.addQuestions(question);
          print("Question added to Multiple Choice Quiz: $quizID");
        } else if (quiz is EssayQuiz) {
          quiz.addQuestions(question);
          print("Question added to Essay Quiz: $quizID");
        }
        return;
      }
    }
    print("Quiz not found.");
  }

  void viewQuizzes() {
    if (quizzes.isEmpty) {
      print("No quizzes available.");
      return;
    }
    for (var quiz in quizzes) {
      print(
        "Quiz ID: ${quiz.getQuizID()}, Topic: ${quiz.getTopic()}, Difficulty: ${quiz.getDifficultyLevel()}",
      );
      if (quiz is MultipleChoiceQuiz) {
        print("Questions: ${quiz.questions}");
      } else if (quiz is EssayQuiz) {
        print("Questions: ${quiz.questions}");
      }
      print("------------");
    }
  }

  void viewStudentGrades() {
    if (students.isEmpty) {
      print("No students available.");
      return;
    }
    for (var student in students) {
      print(
        "Student ID: ${student.getStudentID()}, Name: ${student.getName()}, Grade: ${student.getGrade()}",
      );
    }
  }

  void addStudent(String studentID, String name, double grade) {
    if (students.any((s) => s.getStudentID() == studentID)) {
      print("Student with ID '$studentID' already exists.");
      return;
    }
    students.add(Student(studentID, name, grade));
    print("Student added: $name (ID: $studentID)");
  }

  void gradeQuiz(String studentID, String quizID, double grade) {
    for (var student in students) {
      if (student.getStudentID() == studentID) {
        student.grade = grade;
        print(
          "Quiz $quizID graded for ${student.getName()} with grade: $grade",
        );
        return;
      }
    }
    print("Student not found.");
  }
}
