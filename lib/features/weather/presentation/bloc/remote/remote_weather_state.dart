part of 'remote_weather_bloc.dart';

sealed class RemoteWeatherState extends Equatable {
  final WeatherEntity? weather;
  final DioException? error;

  const RemoteWeatherState({
    this.weather,
    this.error,
  });

  @override
  List<Object> get props => [weather!, error!];
}

final class RemoteWeatherLoading extends RemoteWeatherState {
  const RemoteWeatherLoading();
}

final class RemoteWeatherDone extends RemoteWeatherState {
  const RemoteWeatherDone(WeatherEntity weather) : super(weather: weather);
}

final class RemoteWeatherError extends RemoteWeatherState {
  const RemoteWeatherError(DioException error) : super(error: error);
}
