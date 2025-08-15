import 'dart:io';
import 'capitalizeStrategy.dart';
import 'lowercaseStrategy.dart';
import 'textFormatter.dart';
import 'uppercaseStrategy.dart';
void main() {
  TextFormatter formatter = TextFormatter();

  print("Enter text to format:");
  String inputText = stdin.readLineSync()!;

  while (true) {
    print("Choose formatting option:");
    print("1. Uppercase");
    print("2. Lowercase");
    print("3. Capitalize");
    print("4. Exit");

    String choice = stdin.readLineSync()!;

    switch (choice) {
      case '1':
        formatter.setStrategy(UppercaseStrategy());
        print("Uppercase: ${formatter.format(inputText)}");
        break;
      case '2':
        formatter.setStrategy(LowercaseStrategy());
        print("Lowercase: ${formatter.format(inputText)}");
        break;
      case '3':
        formatter.setStrategy(CapitalizeStrategy());
        print("Capitalize: ${formatter.format(inputText)}");
        break;
      case '4':
        print("Exiting...");
        exit(0);
      default:
        print("Invalid choice, please try again.");
    }
  }
}
