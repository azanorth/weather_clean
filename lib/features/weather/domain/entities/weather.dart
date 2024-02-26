import 'package:equatable/equatable.dart';

import 'package:weather_clean/features/weather/domain/entities/current.dart';
import 'package:weather_clean/features/weather/domain/entities/forecast.dart';
import 'package:weather_clean/features/weather/domain/entities/location.dart';

class WeatherEntity extends Equatable {
  final LocationEntity? location;
  final CurrentEntity? current;
  final ForecastEntity? forecast;

  const WeatherEntity({
    this.location,
    this.current,
    this.forecast,
  });

  @override
  List<Object?> get props => [
        location,
        current,
        forecast,
      ];
}
