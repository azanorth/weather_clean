import 'package:json_annotation/json_annotation.dart';

import 'package:weather_clean/features/weather/data/models/current.dart';
import 'package:weather_clean/features/weather/data/models/forecast.dart';
import 'package:weather_clean/features/weather/data/models/location.dart';
import 'package:weather_clean/features/weather/domain/entities/weather.dart';

part 'weather.g.dart';

@JsonSerializable(fieldRename: FieldRename.snake)
class WeatherModel extends WeatherEntity {
  @override
  final LocationModel? location;

  @override
  final CurrentModel? current;

  @override
  final ForecastModel? forecast;

  const WeatherModel({
    this.location,
    this.current,
    this.forecast,
  }) : super(
          location: location,
          current: current,
          forecast: forecast,
        );

  factory WeatherModel.fromJson(Map<String, dynamic> json) =>
      _$WeatherModelFromJson(json);

  Map<String, dynamic> toJson() => _$WeatherModelToJson(this);
}
