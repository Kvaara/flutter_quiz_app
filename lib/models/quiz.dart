import 'dart:ffi';

import 'package:flutter_quiz_app/models/question.dart';

class Quiz {
  final String id;
  final String description;
  final String title;
  final String topic;
  final Array<Question> questions;
}
