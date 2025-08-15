import 'dart:io';
import 'quizManager.dart';

void main() {
  print("============================================");
  print("         QUIZ MANAGEMENT SYSTEM");
  print("============================================");

  QuizManager quizManager = QuizManager();

  while (true) {
    print("\n========== MENU ==========");
    print("1. Create Quiz");
    print("2. Add Question to Quiz");
    print("3. View Quizzes");
    print("4. Add Student");
    print("5. Grade Quiz");
    print("6. View Student Grades");
    print("7. Exit");
    print("==========================");
    print("Enter your choice:");
    String choice = stdin.readLineSync()!.trim();

    switch (choice) {
      case '1':
        print("Enter quiz type (Multiple Choice / Essay):");
        String type = stdin.readLineSync()!;
        if (type.toLowerCase() != 'multiple choice' && type.toLowerCase() != 'essay') {
          print("Invalid quiz type. Must be 'Multiple Choice' or 'Essay'.");
          break;
        }

        print("Enter quiz ID:");
        String quizID = stdin.readLineSync()!;
        if (quizID.isEmpty) {
          print("Quiz ID cannot be empty.");
          break;
        }

        print("Enter topic:");
        String topic = stdin.readLineSync()!;
        if (topic.isEmpty) {
          print("Topic cannot be empty.");
          break;
        }

        print("Enter difficulty level:");
        String difficultyLevel = stdin.readLineSync()!;
        if (difficultyLevel.isEmpty) {
          print("Difficulty level cannot be empty.");
          break;
        }

        quizManager.createQuiz(type, quizID, topic, difficultyLevel);
        break;

      case '2':
        print("Enter quiz ID to add question:");
        String qID = stdin.readLineSync()!;
        if (qID.isEmpty) {
          print("Quiz ID cannot be empty.");
          break;
        }

        print("Enter question:");
        String question = stdin.readLineSync()!.trim();
        if (question.isEmpty) {
          print("Question cannot be empty.");
          break;
        }

        quizManager.addQuestionToQuiz(qID, question);
        break;


      case '3':
        quizManager.viewQuizzes();
        break;


      case '4':
        print("Enter student ID:");
        String studentID = stdin.readLineSync()!;
        if (studentID.isEmpty) {
          print("Student ID cannot be empty.");
          break;
        }

        print("Enter student name:");
        String name = stdin.readLineSync()!;
        if (name.isEmpty) {
          print("Student name cannot be empty.");
          break;
        }

        print("Enter initial grade:");
        String gradeInput = stdin.readLineSync()!;
        double? grade = double.tryParse(gradeInput);
        if (grade == null || grade < 0) {
          print("Grade must be a valid number and >= 0.");
          break;
        }

        quizManager.addStudent(studentID, name, grade);
        break;

      case '5':
        print("Enter student ID to grade:");
        String sID = stdin.readLineSync()!;
        if (sID.isEmpty) {
          print("Student ID cannot be empty.");
          break;
        }

        print("Enter quiz ID to grade:");
        String qIDToGrade = stdin.readLineSync()!;
        if (qIDToGrade.isEmpty) {
          print("Quiz ID cannot be empty.");
          break;
        }

        print("Enter grade:");
        String gradeToAddInput = stdin.readLineSync()!;
        double? gradeToAdd = double.tryParse(gradeToAddInput);
        if (gradeToAdd == null || gradeToAdd < 0) {
          print("Grade must be a valid number and >= 0.");
          break;
        }

        quizManager.gradeQuiz(sID, qIDToGrade, gradeToAdd);
        break;


      case '6':
        quizManager.viewStudentGrades();
        break;

      case '7':
        print("Exiting Quiz Management System... Goodbye!");
        exit(0);

      default:
        print("Invalid choice, please try again.");
    }
  }
}
