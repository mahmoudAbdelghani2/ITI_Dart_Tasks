import 'textStrategy.dart';

class TextFormatter {
  TextStrategy? _strategy;

  void setStrategy(TextStrategy strategy) {
    _strategy = strategy;
  }

  String format(String text) {
    if (_strategy == null) {
      throw Exception("No strategy set.");
    }
    return _strategy!.formatText(text);
  }
}