import 'package:weather_clean/core/resources/data_state.dart';
import 'package:weather_clean/features/weather/domain/entities/weather.dart';

abstract class WeatherRepository {
  // API methods
  Future<DataState<WeatherEntity>> getWeather();

  //TODO: Implement other methods...
}
