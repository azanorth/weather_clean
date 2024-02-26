// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'forecast_day.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ForecastDayModel _$ForecastDayModelFromJson(Map<String, dynamic> json) =>
    ForecastDayModel(
      date: json['date'] as String?,
      day: json['day'] == null
          ? null
          : DayModel.fromJson(json['day'] as Map<String, dynamic>),
      astro: json['astro'] == null
          ? null
          : AstroModel.fromJson(json['astro'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$ForecastDayModelToJson(ForecastDayModel instance) =>
    <String, dynamic>{
      'date': instance.date,
      'day': instance.day,
      'astro': instance.astro,
    };
