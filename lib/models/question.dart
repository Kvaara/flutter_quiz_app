import 'package:flutter_quiz_app/models/option.dart';

class Question {
  final String text;
  final List<Option> options;

  Question({
    this.text = "",
    this.options = const [],
  });
}
