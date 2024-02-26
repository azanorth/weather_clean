import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:weather_clean/features/weather/data/data_sources/remote/weather_service.dart';
import 'package:weather_clean/features/weather/data/repository/weather_repository_impl.dart';
import 'package:weather_clean/features/weather/domain/repository/weather_repository.dart';
import 'package:weather_clean/features/weather/domain/usecases/get_weather.dart';
import 'package:weather_clean/features/weather/presentation/bloc/remote/remote_weather_bloc.dart';

final sl = GetIt.instance;

Future<void> initDependencies() async {
  // Dio
  sl.registerSingleton<Dio>(Dio());

  // Dependencies
  sl.registerSingleton<WeatherApiService>(WeatherApiService(sl()));
  sl.registerSingleton<WeatherRepository>(WeatherRepositoryImpl(sl()));

  // Usecases
  sl.registerSingleton<GetWeatherUseCase>(GetWeatherUseCase(sl()));

  // Blocs
  sl.registerFactory<RemoteWeatherBloc>(() => RemoteWeatherBloc(sl()));
}
