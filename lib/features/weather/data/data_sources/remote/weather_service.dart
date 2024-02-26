import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

import 'package:weather_clean/core/constants/constants.dart';
import 'package:weather_clean/features/weather/data/models/weather.dart';

part 'weather_service.g.dart';

@RestApi(baseUrl: weatherAPIBaseURL)
abstract class WeatherApiService {
  factory WeatherApiService(Dio dio) = _WeatherApiService;

  @GET('/forecast.json')
  Future<HttpResponse<WeatherModel>> getWeather({
    @Query('key') String? apiKey,
    @Query('q') String? place,
    @Query('days') int? forecastDays,
    @Query('aqi') String? airQuality,
    @Query('alerts') String? alerts,
  });
}
