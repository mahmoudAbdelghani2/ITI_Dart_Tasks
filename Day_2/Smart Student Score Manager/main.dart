import 'dart:io';

double calculateStats(List<int> scores) {
  double avgScore = 0;
  int allScore = 0;
  scores.forEach((val) => allScore += val);
  avgScore = allScore / scores.length;
  return avgScore;
}

void main() {
  while (true) {
    print("Smart Student Score Manager");
    print("-------------------------------------------");

    print("Enter Your Name : ");
    String? name = stdin.readLineSync();

    print("Enter Your Age : ");
    int? age = int.parse(stdin.readLineSync()!);

    print("Are you graduated ? : ");
    String? gradInput = stdin.readLineSync()!.toLowerCase();
    bool graduated = (gradInput == 'yes' || gradInput == 'y');

    if (graduated) {
      print('Graduated ...');
    } else {
      print('Not Graduated !!!');
    }

    print("-------------------------------------------");

    print("Please select your department : ");
    print('''Options :
              1. Computer Science
              2. Design
              3. Engineering 
        ''');
    int? option = int.tryParse(stdin.readLineSync()!);
    String? department;
    switch (option) {
      case 1:
        {
          department = 'Computer Science';
          print("Welcome in Computer Science department");
        }
        break;
      case 2:
        {
          department = 'Design';
          print("Welcome in Design department");
        }
        break;
      case 3:
        {
          department = 'Engineering ';
          print("Welcome in Engineering department");
        }
        break;
      default:
        {
          department = 'Design';
          print("Invalide option, You will go to Design department");
        }
        ;
    }

    print("-------------------------------------------");

    print('Enter 5 test scores : ');
    List<int> scores = [];
    for (int i = 0; i < 5; i++) {
      print("Enter score ${i + 1}");
      scores.add(int.parse(stdin.readLineSync()!));
    }
    ;

    scores = scores.map((score) => score + 5).toList();

    print("Scores after +5 bonus: ");
    scores.forEach((score) => print(score));

    print("-------------------------------------------");

    double avgScore = calculateStats(scores);
    bool passed;
    if (avgScore >= 60) {
      print("Passed");
      passed = true;
    } else {
      print("Failed");
      passed = false;
    }

    print("-------------------------------------------");

    var above60 = scores.where((score) => score > 60);
    print("\nScores above 60:");
    above60.forEach((score) => print(score));

    var failedCount = scores.where((score) => score < 50).length;
    print("\nNumber of failed scores (<50): $failedCount");

    print("-------------------------------------------");

    if (graduated) {
      print("You are already graduated");
    } else if (!graduated && passed) {
      print("Ready to graduate soon");
    } else if (!graduated && !passed) {
      print("Need more work");
    }

    print("-------------------------------------------");

    print("Do you want to try again? (y/n)");
    print("Enter 'y' to repeat or 'n' to exit.");
    String? state = stdin.readLineSync()!.toLowerCase();

    if (state == "n") {
      print("Exiting the program...");
      exit(0);
    } else if (state == "y") {
      print("Restarting...");
      continue;
    } else {
      print("Invalid input, exiting program...");
      exit(0);
    }
  }
}
