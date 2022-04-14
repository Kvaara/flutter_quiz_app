import 'package:json_annotation/json_annotation.dart';

import 'package:flutter_quiz_app/models/option.dart';
part "question.g.dart";

@JsonSerializable()
class Question {
  final String text;
  final List<Option> options;

  Question({
    this.text = "",
    this.options = const [],
  });

  factory Question.fromJson(Map<String, dynamic> json) =>
      _$QuestionFromJson(json);
  Map<String, dynamic> toJson() => _$QuestionToJson(this);
}
