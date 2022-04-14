import 'package:json_annotation/json_annotation.dart';

import 'package:flutter_quiz_app/models/quiz.dart';
part "topic.g.dart";

@JsonSerializable()
class Topic {
  final String id, img, title;
  final List<Quiz> quizzes;

  Topic({
    this.id = "",
    this.img = "",
    this.title = "",
    this.quizzes = const [],
  });

  factory Topic.fromJson(Map<String, dynamic> json) => _$TopicFromJson(json);
  Map<String, dynamic> toJson() => _$TopicToJson(this);
}
