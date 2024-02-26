import 'package:dio/dio.dart';
import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

import 'package:weather_clean/core/resources/data_state.dart';
import 'package:weather_clean/features/weather/domain/entities/weather.dart';
import 'package:weather_clean/features/weather/domain/usecases/get_weather.dart';

part 'remote_weather_event.dart';
part 'remote_weather_state.dart';

class RemoteWeatherBloc extends Bloc<RemoteWeatherEvent, RemoteWeatherState> {
  final GetWeatherUseCase _getWeatherUseCase;

  RemoteWeatherBloc(this._getWeatherUseCase)
      : super(const RemoteWeatherLoading()) {
    on<GetWeather>(onGetWeather);
  }

  Future<void> onGetWeather(
      GetWeather event, Emitter<RemoteWeatherState> emit) async {
    final dataState = await _getWeatherUseCase();

    if (dataState is DataSuccess) {
      emit(RemoteWeatherDone(dataState.data!));
    }

    if (dataState is DataFailed) {
      emit(RemoteWeatherError(dataState.error!));
    }
  }
}
