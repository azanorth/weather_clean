// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'day.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DayModel _$DayModelFromJson(Map<String, dynamic> json) => DayModel(
      maxtempC: (json['maxtemp_c'] as num?)?.toDouble(),
      mintempC: (json['mintemp_c'] as num?)?.toDouble(),
      avgtempC: (json['avgtemp_c'] as num?)?.toDouble(),
      maxwindKph: (json['maxwind_kph'] as num?)?.toDouble(),
      totalprecipMm: (json['totalprecip_mm'] as num?)?.toDouble(),
      avgvisKm: (json['avgvis_km'] as num?)?.toDouble(),
      avghumidity: (json['avghumidity'] as num?)?.toDouble(),
      condition: json['condition'] == null
          ? null
          : ConditionModel.fromJson(json['condition'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$DayModelToJson(DayModel instance) => <String, dynamic>{
      'maxtemp_c': instance.maxtempC,
      'mintemp_c': instance.mintempC,
      'avgtemp_c': instance.avgtempC,
      'maxwind_kph': instance.maxwindKph,
      'totalprecip_mm': instance.totalprecipMm,
      'avgvis_km': instance.avgvisKm,
      'avghumidity': instance.avghumidity,
      'condition': instance.condition,
    };
