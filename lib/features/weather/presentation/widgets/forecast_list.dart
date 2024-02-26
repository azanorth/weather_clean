import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import 'package:weather_clean/features/weather/domain/entities/forecast_day.dart';
import 'package:weather_clean/features/weather/presentation/widgets/forecast_item.dart';

class ForecastList extends StatelessWidget {
  final List<ForecastDayEntity> _forecastday;
  final AsyncCallback _onRefresh;

  const ForecastList({
    super.key,
    required List<ForecastDayEntity> forecastday,
    required AsyncCallback onRefresh,
  })  : _forecastday = forecastday,
        _onRefresh = onRefresh;

  @override
  Widget build(BuildContext context) => Flexible(
        child: RefreshIndicator(
          onRefresh: _onRefresh,
          child: ListView.builder(
            itemCount: _forecastday.length,
            itemBuilder: (context, index) {
              final item = _forecastday[index];
              return ForecastItem(
                forecastItem: item,
              );
            },
          ),
        ),
      );
}
