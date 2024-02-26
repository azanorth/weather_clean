// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'current.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CurrentModel _$CurrentModelFromJson(Map<String, dynamic> json) => CurrentModel(
      lastUpdated: json['last_updated'] as String?,
      tempC: (json['temp_c'] as num?)?.toDouble(),
      isDay: json['is_day'] as int?,
      condition: json['condition'] == null
          ? null
          : ConditionModel.fromJson(json['condition'] as Map<String, dynamic>),
      windKph: (json['wind_kph'] as num?)?.toDouble(),
      pressureMb: (json['pressure_mb'] as num?)?.toDouble(),
      precipMm: (json['precip_mm'] as num?)?.toDouble(),
      humidity: json['humidity'] as int?,
      cloud: json['cloud'] as int?,
      feelslikeC: (json['feelslike_c'] as num?)?.toDouble(),
      visKm: (json['vis_km'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$CurrentModelToJson(CurrentModel instance) =>
    <String, dynamic>{
      'last_updated': instance.lastUpdated,
      'temp_c': instance.tempC,
      'is_day': instance.isDay,
      'wind_kph': instance.windKph,
      'pressure_mb': instance.pressureMb,
      'precip_mm': instance.precipMm,
      'humidity': instance.humidity,
      'cloud': instance.cloud,
      'feelslike_c': instance.feelslikeC,
      'vis_km': instance.visKm,
      'condition': instance.condition,
    };
