part of 'remote_weather_bloc.dart';

sealed class RemoteWeatherEvent extends Equatable {
  const RemoteWeatherEvent();

  @override
  List<Object> get props => [];
}

final class GetWeather extends RemoteWeatherEvent {
  const GetWeather();
}
