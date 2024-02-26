import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_clean/features/weather/presentation/pages/forecast.dart';

import 'package:weather_clean/injection_container.dart';
import 'package:weather_clean/config/theme/app_themes.dart';
import 'package:weather_clean/features/weather/presentation/bloc/remote/remote_weather_bloc.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) => BlocProvider<RemoteWeatherBloc>(
        create: (context) => sl()..add(const GetWeather()),
        child: MaterialApp(
          debugShowCheckedModeBanner: false,
          theme: theme(),
          home: const ForecastScreen(),
        ),
      );
}
