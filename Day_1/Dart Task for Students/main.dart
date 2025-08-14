import 'dart:io';

void main() {
  String str1 = 'Mahmoud';
  int num1 = 123456789;
  double num2 = 123.456789;
  bool bl = true;
  var str2 = 'Ahmed';
  print("String is $str1");
  print("Integer is $num1");
  print("Double is $num2");
  print("Boolean is $bl");
  print("Var is $str2");
  print("------------------------------------");

  print("Enter first input : ");
  int num3 = int.parse(stdin.readLineSync()!);
  print("Enter second input : ");
  int num4 = int.parse(stdin.readLineSync()!);

  print("Sum is : ${num3 + num4}");
  print("Difference is : ${num3 - num4}");
  print("Multiplication is : ${num3 * num4}");
  print("Division is : ${(num3 / num4).toStringAsFixed(2)}");
  print("Modulus is : ${num3 % num4}");

  print("------------------------------------");

  int correctUserId = 1234;
  int correctUserPin = 5678;
  print("Enter userID : ");
  int userID = int.parse(stdin.readLineSync()!);
  print("Enter userPin : ");
  int userPin = int.parse(stdin.readLineSync()!);

  if (userID == correctUserId && userPin == correctUserPin) {
    print("Login Successful");
  } else {
    print("Login Failed");
  }

  print("------------------------------------");

  print("Enter your full name");
  String? fullName = stdin.readLineSync();

  print("Uppercase: ${fullName!.toUpperCase()}");

  print("Lowercase: ${fullName.toLowerCase()}");

  print("Number of characters: ${fullName.length}");

  String reversedName = fullName.split('').reversed.join();
  print("Reversed: $reversedName");

  stdout.write("Enter a sentence: ");
  String sentence = stdin.readLineSync()!;

  String updatedSentence = sentence.replaceAll("taxi", "bus");
  print("Updated sentence: $updatedSentence");

  print("------------------------------------");

  int num5 = 987654321;
  String numberToString = num5.toString();
  print("Integer to String: $numberToString");

  String strNumber = "123456789";
  int stringToNumber = int.parse(strNumber);
  print("String to Integer: $stringToNumber");

  print("------------------------------------");

  print("Enter a sentence : ");
  String? str3 = stdin.readLineSync();
  List<String> words = [];
  String test = '';
  for (int i = 0; i < str3!.length; i++) {
    if (str3[i] != ' ') {
      test += str3[i];
    } else {
      if (test != '') {
        words.add(test);
      }
      test = '';
    }
  }
  if (test != '') {
    words.add(test);
  }
  for (int i = 0; i < words.length; i++) {
    print(words[i]);
  }
}
