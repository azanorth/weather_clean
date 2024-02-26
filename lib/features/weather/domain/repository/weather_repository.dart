import 'package:weather_clean/core/resources/data_state.dart';
import 'package:weather_clean/features/weather/data/models/weather.dart';

abstract class WeatherRepository {
  // API methods
  Future<DataState<WeatherModel>> getWeather();

  //TODO: Implement other methods...
}
