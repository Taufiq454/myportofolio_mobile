import 'package:json_annotation/json_annotation.dart';

part 'experience.g.dart';

/// Experience yang disinkronkan dengan Django REST Framework API.
@JsonSerializable(fieldRename: FieldRename.snake)
class Experience {
  const Experience({
    required this.title,
    required this.description,
    this.category = 'full-time',
    this.thumbnail = '',
    this.endedAt,
    this.startedAt,
    this.id,
  });

  factory Experience.fromJson(Map<String, dynamic> json) =>
      _$ExperienceFromJson(json);

  // id dan started_at ditetapkan server, jadi tidak ikut dikirim.
  @JsonKey(includeToJson: false)
  final String? id;

  final String title;
  final String description;

  @JsonKey(defaultValue: 'full-time')
  final String category;

  // opsional, null dari server dianggap ''
  @JsonKey(defaultValue: '')
  final String thumbnail;

  @JsonKey(includeToJson: false)
  final DateTime? startedAt;

  // boleh null (masih berlangsung)
  final DateTime? endedAt;

  Map<String, dynamic> toJson() => _$ExperienceToJson(this);
}
