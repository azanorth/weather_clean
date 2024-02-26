import 'package:weather_clean/core/usecase/usecase.dart';
import 'package:weather_clean/core/resources/data_state.dart';
import 'package:weather_clean/features/weather/data/models/weather.dart';
import 'package:weather_clean/features/weather/domain/repository/weather_repository.dart';

class GetWeatherUseCase implements UseCase<DataState<WeatherModel>, void> {
  final WeatherRepository _repository;

  GetWeatherUseCase(this._repository);

  @override
  Future<DataState<WeatherModel>> call({void params}) {
    return _repository.getWeather();
  }
}
