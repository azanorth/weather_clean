import 'package:json_annotation/json_annotation.dart';

import 'package:weather_clean/features/weather/data/models/day.dart';
import 'package:weather_clean/features/weather/data/models/astro.dart';
import 'package:weather_clean/features/weather/domain/entities/forecast_day.dart';

part 'forecast_day.g.dart';

@JsonSerializable(fieldRename: FieldRename.snake)
class ForecastDayModel extends ForecastDayEntity {
  @override
  final DayModel? day;

  @override
  final AstroModel? astro;

  ForecastDayModel({
    String? date,
    this.day,
    this.astro,
  }) : super(
          astro: astro,
          date: date,
          day: day,
        );

  factory ForecastDayModel.fromJson(Map<String, dynamic> json) =>
      _$ForecastDayModelFromJson(json);

  Map<String, dynamic> toJson() => _$ForecastDayModelToJson(this);
}
