import 'package:equatable/equatable.dart';

import 'package:weather_clean/features/weather/domain/entities/astro.dart';
import 'package:weather_clean/features/weather/domain/entities/day.dart';

class ForecastDayEntity extends Equatable {
  final String? date;
  final DayEntity? day;
  final AstroEntity? astro;

  ForecastDayEntity({
    this.date,
    this.day,
    this.astro,
  });

  @override
  List<Object?> get props => [
        date,
        day,
        astro,
      ];
}
