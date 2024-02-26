import 'package:json_annotation/json_annotation.dart';
import 'package:weather_clean/features/weather/domain/entities/astro.dart';

part 'astro.g.dart';

@JsonSerializable(fieldRename: FieldRename.snake)
class AstroModel extends AstroEntity {
  const AstroModel({
    String? sunrise,
    String? sunset,
  }) : super(
          sunrise: sunrise,
          sunset: sunset,
        );

  factory AstroModel.fromJson(Map<String, dynamic> json) =>
      _$AstroModelFromJson(json);

  Map<String, dynamic> toJson() => _$AstroModelToJson(this);
}
