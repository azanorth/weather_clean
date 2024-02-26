import 'package:json_annotation/json_annotation.dart';

import 'package:weather_clean/features/weather/domain/entities/location.dart';

part 'location.g.dart';

@JsonSerializable(fieldRename: FieldRename.snake)
class LocationModel extends LocationEntity {
  const LocationModel({
    String? name,
    String? region,
    String? country,
    double? lat,
    double? lon,
    String? tzId,
    int? localtimeEpoch,
    String? localtime,
  }) : super(
          name: name,
          region: region,
          country: country,
          lat: lat,
          lon: lon,
          tzId: tzId,
          localtimeEpoch: localtimeEpoch,
          localtime: localtime,
        );

  factory LocationModel.fromJson(Map<String, dynamic> json) =>
      _$LocationModelFromJson(json);

  Map<String, dynamic> toJson() => _$LocationModelToJson(this);
}
