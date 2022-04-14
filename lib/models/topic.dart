import 'dart:ffi';

import 'package:flutter_quiz_app/models/quiz.dart';

class Topic {
  final String id;
  final String img;
  final String title;
  final Array<Quiz> quizzes;
}
