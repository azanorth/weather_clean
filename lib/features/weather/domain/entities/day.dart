import 'package:equatable/equatable.dart';

import 'package:weather_clean/features/weather/domain/entities/condition.dart';

class DayEntity extends Equatable {
  final double? maxtempC;
  final double? mintempC;
  final double? avgtempC;
  final double? maxwindKph;
  final double? totalprecipMm;
  final double? avgvisKm;
  final double? avghumidity;
  final ConditionEntity? condition;

  const DayEntity({
    this.maxtempC,
    this.mintempC,
    this.avgtempC,
    this.maxwindKph,
    this.totalprecipMm,
    this.avgvisKm,
    this.avghumidity,
    this.condition,
  });

  @override
  List<Object?> get props => [
        maxtempC,
        mintempC,
        avgtempC,
        maxwindKph,
        totalprecipMm,
        avgvisKm,
        avghumidity,
        condition,
      ];
}
