import 'dart:io';

import 'package:dio/dio.dart';

import 'package:weather_clean/core/constants/constants.dart';
import 'package:weather_clean/core/resources/data_state.dart';
import 'package:weather_clean/features/weather/data/models/weather.dart';
import 'package:weather_clean/features/weather/domain/repository/weather_repository.dart';
import 'package:weather_clean/features/weather/data/data_sources/remote/weather_service.dart';

class WeatherRepositoryImpl implements WeatherRepository {
  final WeatherApiService _apiService;

  WeatherRepositoryImpl(this._apiService);

  @override
  Future<DataState<WeatherModel>> getWeather() async {
    try {
      final httpResponse = await _apiService.getWeather(
        apiKey: weatherAPIKey,
        place: countryQuery,
        forecastDays: 5,
        airQuality: aqiQuery,
        alerts: alertsQuery,
      );

      if (httpResponse.response.statusCode == HttpStatus.ok) {
        return DataSuccess(httpResponse.data);
      } else {
        return DataFailed(
          DioException(
            type: DioExceptionType.unknown,
            response: httpResponse.response,
            error: httpResponse.response.statusMessage,
            requestOptions: httpResponse.response.requestOptions,
          ),
        );
      }
    } on DioException catch (e) {
      return DataFailed(e);
    }
  }
}
