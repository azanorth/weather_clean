import 'package:json_annotation/json_annotation.dart';

import 'package:weather_clean/features/weather/data/models/condition.dart';
import 'package:weather_clean/features/weather/domain/entities/day.dart';

part 'day.g.dart';

@JsonSerializable(fieldRename: FieldRename.snake)
class DayModel extends DayEntity {
  @override
  final ConditionModel? condition;

  const DayModel({
    double? maxtempC,
    double? mintempC,
    double? avgtempC,
    double? maxwindKph,
    double? totalprecipMm,
    double? avgvisKm,
    double? avghumidity,
    this.condition,
  }) : super(
          maxtempC: maxtempC,
          mintempC: mintempC,
          avgtempC: avgtempC,
          maxwindKph: maxwindKph,
          totalprecipMm: totalprecipMm,
          avgvisKm: avgvisKm,
          avghumidity: avghumidity,
          condition: condition,
        );

  factory DayModel.fromJson(Map<String, dynamic> json) =>
      _$DayModelFromJson(json);

  Map<String, dynamic> toJson() => _$DayModelToJson(this);
}
