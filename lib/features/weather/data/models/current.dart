import 'package:json_annotation/json_annotation.dart';

import 'package:weather_clean/features/weather/data/models/condition.dart';
import 'package:weather_clean/features/weather/domain/entities/current.dart';

part 'current.g.dart';

@JsonSerializable(fieldRename: FieldRename.snake)
class CurrentModel extends CurrentEntity {
  @override
  final ConditionModel? condition;

  const CurrentModel({
    String? lastUpdated,
    double? tempC,
    int? isDay,
    this.condition,
    double? windKph,
    double? pressureMb,
    double? precipMm,
    int? humidity,
    int? cloud,
    double? feelslikeC,
    double? visKm,
  }) : super(
          lastUpdated: lastUpdated,
          tempC: tempC,
          isDay: isDay,
          condition: condition,
          windKph: windKph,
          pressureMb: pressureMb,
          precipMm: precipMm,
          humidity: humidity,
          cloud: cloud,
          feelslikeC: feelslikeC,
          visKm: visKm,
        );

  factory CurrentModel.fromJson(Map<String, dynamic> json) =>
      _$CurrentModelFromJson(json);

  Map<String, dynamic> toJson() => _$CurrentModelToJson(this);
}
