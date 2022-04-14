import 'package:json_annotation/json_annotation.dart';
part "report.g.dart";

@JsonSerializable()
class Report {
  final String uid;
  final int total;
  final Map topics;

  Report({
    this.uid = "",
    this.total = 0,
    this.topics = const {},
  });

  factory Report.fromJson(Map<String, dynamic> json) => _$ReportFromJson(json);
  Map<String, dynamic> toJson() => _$ReportToJson(this);
}
