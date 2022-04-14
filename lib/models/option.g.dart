// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'option.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Option _$OptionFromJson(Map<String, dynamic> json) => Option(
      correct: json['correct'] as bool? ?? false,
      detail: json['detail'] as String? ?? "",
      value: json['value'] as String? ?? "",
    );

Map<String, dynamic> _$OptionToJson(Option instance) => <String, dynamic>{
      'correct': instance.correct,
      'detail': instance.detail,
      'value': instance.value,
    };
