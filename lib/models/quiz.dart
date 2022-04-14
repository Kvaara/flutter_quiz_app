import 'package:flutter_quiz_app/models/question.dart';

class Quiz {
  final String id;
  final String description;
  final String title;
  final String topic;
  final List<Question> questions;

  Quiz({
    this.id = "",
    this.description = "",
    this.title = "",
    this.topic = "",
    this.questions = const [],
  });
}
