import 'textStrategy.dart';

class UppercaseStrategy implements TextStrategy {
  @override
  String formatText(String text) {
    return text.toUpperCase();
  }
}
