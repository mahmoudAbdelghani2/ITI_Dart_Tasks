import 'textStrategy.dart';

class LowercaseStrategy implements TextStrategy {
  @override
  String formatText(String text) {
    return text.toLowerCase();
  }
}
