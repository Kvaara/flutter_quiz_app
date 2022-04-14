import 'package:flutter_quiz_app/models/quiz.dart';

class Topic {
  final String id;
  final String img;
  final String title;
  final List<Quiz> quizzes;

  Topic({
    this.id = "",
    this.img = "",
    this.title = "",
    this.quizzes = const [],
  });
}
