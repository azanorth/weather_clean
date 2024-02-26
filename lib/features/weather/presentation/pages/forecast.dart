import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:weather_clean/features/weather/presentation/bloc/remote/remote_weather_bloc.dart';
import 'package:weather_clean/features/weather/presentation/widgets/current_weather.dart';
import 'package:weather_clean/features/weather/presentation/widgets/forecast_list.dart';

class ForecastScreen extends StatelessWidget {
  const ForecastScreen({super.key});

  _buildAppBar(BuildContext context) => AppBar(
        title: const Text(
          'Weather',
          style: TextStyle(
            color: Colors.black,
          ),
        ),
      );

  Future<void> _onRefreshWeather(BuildContext context) async =>
      BlocProvider.of<RemoteWeatherBloc>(context).add(
        const GetWeather(),
      );

  _buildBody(BuildContext context) =>
      BlocBuilder<RemoteWeatherBloc, RemoteWeatherState>(
        builder: (_, state) => switch (state) {
          RemoteWeatherLoading() => const Center(
              child: CircularProgressIndicator(),
            ),
          RemoteWeatherDone() => Column(
              children: [
                CurrentWeather(
                  current: state.weather!.current!,
                  location: state.weather!.location!,
                ),
                ForecastList(
                  forecastday: state.weather!.forecast!.forecastday!,
                  onRefresh: () => _onRefreshWeather(context),
                ),
              ],
            ),
          RemoteWeatherError() => const Center(
              child: Icon(Icons.refresh),
            ),
        },
      );

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: _buildAppBar(context),
        body: _buildBody(context),
      );
}
