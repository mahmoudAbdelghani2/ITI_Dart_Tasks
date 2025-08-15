import 'textStrategy.dart';

class CapitalizeStrategy implements TextStrategy {
  @override
  String formatText(String text) {
    List<String> words = text.split(' ');
    List<String> capitalizedWords = [];

    for (String word in words) {
      if (word.isEmpty) {
        capitalizedWords.add(word);
      } else {
        String firstLetter = word[0].toUpperCase();
        String rest = '';
        if (word.length > 1) {
          rest = word.substring(1).toLowerCase();
        }
        capitalizedWords.add(firstLetter + rest);
      }
    }

    return capitalizedWords.join(' ');
  }
}
