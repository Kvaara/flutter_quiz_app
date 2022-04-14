import 'package:json_annotation/json_annotation.dart';

import 'package:flutter_quiz_app/models/question.dart';
part "quiz.g.dart";

@JsonSerializable()
class Quiz {
  final String id, description, title, topic;
  final List<Question> questions;

  Quiz({
    this.id = "",
    this.description = "",
    this.title = "",
    this.topic = "",
    this.questions = const [],
  });

  factory Quiz.fromJson(Map<String, dynamic> json) => _$QuizFromJson(json);
  Map<String, dynamic> toJson() => _$QuizToJson(this);
}
