import 'package:json_annotation/json_annotation.dart';

part 'education.g.dart';

@JsonSerializable(fieldRename: FieldRename.snake)
class Education {
  const Education({
    required this.institution,
    required this.degree,
    required this.studyProgram,
    required this.startYear,
    this.endYear,
    this.id,
  });

  factory Education.fromJson(Map<String, dynamic> json) =>
      _$EducationFromJson(json);

  @JsonKey(includeToJson: false)
  final String? id;

  final String institution;
  final String degree;
  final String studyProgram;
  final int startYear;

  // boleh null (masih berkuliah)
  final int? endYear;

  Map<String, dynamic> toJson() => _$EducationToJson(this);
}
