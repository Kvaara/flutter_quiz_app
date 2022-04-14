import 'package:json_annotation/json_annotation.dart';
part "option.g.dart";

@JsonSerializable()
class Option {
  final bool correct;
  final String detail, value;

  Option({
    this.correct = false,
    this.detail = "",
    this.value = "",
  });

  factory Option.fromJson(Map<String, dynamic> json) => _$OptionFromJson(json);
  Map<String, dynamic> toJson() => _$OptionToJson(this);
}
