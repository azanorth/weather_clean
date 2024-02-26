import 'package:json_annotation/json_annotation.dart';
import 'package:weather_clean/features/weather/data/models/forecast_day.dart';

import 'package:weather_clean/features/weather/domain/entities/forecast.dart';

part 'forecast.g.dart';

@JsonSerializable(fieldRename: FieldRename.snake)
class ForecastModel extends ForecastEntity {
  @override
  final List<ForecastDayModel>? forecastday;

  const ForecastModel({
    this.forecastday,
  }) : super(forecastday: forecastday);

  factory ForecastModel.fromJson(Map<String, dynamic> json) =>
      _$ForecastModelFromJson(json);

  Map<String, dynamic> toJson() => _$ForecastModelToJson(this);
}
