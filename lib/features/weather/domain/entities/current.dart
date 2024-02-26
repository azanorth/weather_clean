import 'package:equatable/equatable.dart';

import 'package:weather_clean/features/weather/domain/entities/condition.dart';

class CurrentEntity extends Equatable {
  final String? lastUpdated;
  final double? tempC;
  final int? isDay;
  final ConditionEntity? condition;
  final double? windKph;
  final double? pressureMb;
  final double? precipMm;
  final int? humidity;
  final int? cloud;
  final double? feelslikeC;
  final double? visKm;

  const CurrentEntity({
    this.lastUpdated,
    this.tempC,
    this.isDay,
    this.condition,
    this.windKph,
    this.pressureMb,
    this.precipMm,
    this.humidity,
    this.cloud,
    this.feelslikeC,
    this.visKm,
  });

  @override
  List<Object?> get props => [
        lastUpdated,
        tempC,
        isDay,
        condition,
        windKph,
        pressureMb,
        precipMm,
        humidity,
        cloud,
        feelslikeC,
        visKm,
      ];
}
