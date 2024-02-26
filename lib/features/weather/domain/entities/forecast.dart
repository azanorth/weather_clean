import 'package:equatable/equatable.dart';

import 'package:weather_clean/features/weather/domain/entities/forecast_day.dart';

class ForecastEntity extends Equatable {
  final List<ForecastDayEntity>? forecastday;

  const ForecastEntity({
    this.forecastday,
  });

  @override
  List<Object?> get props => [forecastday];
}
