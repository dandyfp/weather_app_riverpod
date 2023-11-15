import 'package:extended_image/extended_image.dart';
import 'package:flutter/material.dart';
import 'package:grouped_list/grouped_list.dart';
import 'package:intl/intl.dart';
import 'package:weather_app/api/base_url.dart';
import 'package:weather_app/domain/entities/data_hourly_forecast.dart';

Widget foreground(DataHourlyForecast data) {
  return Column(
    children: [
      AppBar(
        title: const Text('Hourly Forecast'),
        centerTitle: true,
        backgroundColor: Colors.transparent,
        foregroundColor: Colors.white,
        forceMaterialTransparency: true,
      ),
      Expanded(
        child: GroupedListView(
          groupHeaderBuilder: (element) {
            var format = DateTime.fromMillisecondsSinceEpoch((element.dt ?? 0) * 1000);
            var dateTimeFormat = DateFormat('EEEE, d MMMM yyyy').format(format);
            return Align(
              alignment: Alignment.center,
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white.withOpacity(0.7),
                  borderRadius: BorderRadius.circular(30),
                ),
                padding: const EdgeInsets.symmetric(
                  vertical: 6,
                  horizontal: 16,
                ),
                child: Text(dateTimeFormat),
              ),
            );
          },
          groupSeparatorBuilder: (String groupByValue) => Text(groupByValue),
          elements: data.list,
          groupBy: (element) {
            var format = DateTime.fromMillisecondsSinceEpoch((element.dt ?? 0) * 1000);
            return DateFormat('yyyy-MM-dd').format(format);
          },
          itemBuilder: (context, element) {
            var format = DateTime.fromMillisecondsSinceEpoch((element.dt ?? 0) * 1000);
            var dateTimeFormat = DateFormat('HH:mm').format(format);
            return Padding(
              padding: const EdgeInsets.only(
                right: 24,
                left: 5,
              ),
              child: Row(
                children: [
                  ExtendedImage.network(
                    BaseUrl.iconWeather(
                      element.weather.first.icon,
                    ),
                    height: 80,
                    width: 80,
                  ),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          dateTimeFormat.toString(),
                          style: const TextStyle(
                            fontSize: 16,
                            color: Colors.white,
                          ),
                        ),
                        Text(
                          element.weather.first.description,
                          style: const TextStyle(
                            color: Colors.white70,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Text(
                    '${(element.main.temp - 273.15).round()}\u2103',
                    style: const TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      shadows: [
                        Shadow(
                          blurRadius: 6,
                          color: Colors.black26,
                          offset: Offset(2, 2),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            );
          },
        ),
      ),
    ],
  );
}
