import 'package:intl/intl.dart';
import 'package:flutter/material.dart';

import 'package:weather_clean/features/weather/domain/entities/forecast_day.dart';

class ForecastItem extends StatelessWidget {
  final ForecastDayEntity _forecastItem;

  const ForecastItem({
    super.key,
    required ForecastDayEntity forecastItem,
  }) : _forecastItem = forecastItem;

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ),
      elevation: 4,
      color: Colors.white.withAlpha(170),
      child: ListTile(
        leading: SizedBox(
          width: 40,
          height: 40,
          child: Image.network(
            'https:${_forecastItem.day!.condition!.icon}',
            fit: BoxFit.fill,
          ),
        ),
        title: Column(
          children: [
            Row(
              children: [
                Expanded(
                  flex: 2,
                  child: Row(
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Text(
                                'min: ',
                                style: Theme.of(context)
                                    .textTheme
                                    .labelMedium!
                                    .copyWith(fontSize: 13),
                              ),
                              Text(
                                _forecastItem.day!.mintempC!.ceil().toString(),
                                style: Theme.of(context)
                                    .textTheme
                                    .headlineMedium!
                                    .copyWith(fontSize: 13),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              Text(
                                'max: ',
                                style: Theme.of(context)
                                    .textTheme
                                    .labelMedium!
                                    .copyWith(fontSize: 13),
                              ),
                              Text(
                                _forecastItem.day!.maxtempC!.ceil().toString(),
                                style: Theme.of(context)
                                    .textTheme
                                    .headlineMedium!
                                    .copyWith(fontSize: 13),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Expanded(
                  flex: 3,
                  child: Column(
                    children: [
                      Text(
                        DateFormat.MMMEd().format(
                          DateTime.parse(_forecastItem.date!),
                        ),
                      )
                    ],
                  ),
                ),
                Expanded(
                  flex: 3,
                  child: Text(_forecastItem.day!.condition!.text!),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
