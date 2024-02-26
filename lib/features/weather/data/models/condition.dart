import 'package:json_annotation/json_annotation.dart';
import 'package:weather_clean/features/weather/domain/entities/condition.dart';

part 'condition.g.dart';

@JsonSerializable(fieldRename: FieldRename.snake)
class ConditionModel extends ConditionEntity {
  const ConditionModel({
    String? text,
    String? icon,
    int? code,
  }) : super(
          text: text,
          icon: icon,
          code: code,
        );

  factory ConditionModel.fromJson(Map<String, dynamic> json) =>
      _$ConditionModelFromJson(json);

  Map<String, dynamic> toJson() => _$ConditionModelToJson(this);
}
