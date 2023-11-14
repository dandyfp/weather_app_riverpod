import 'package:flutter/widgets.dart';
import 'package:weather_app/domain/entities/data_weather.dart';
import 'package:weather_app/presentation/commons/app_constant.dart';

Widget backGround(DataWeather data, BuildContext context) {
  String assetPath = weatherGB[data.weather.first.main] ?? weatherGB.entries.first.value;
  return SizedBox(
    height: MediaQuery.of(context).size.height,
    width: double.infinity,
    child: Image.asset(
      assetPath,
      fit: BoxFit.cover,
    ),
  );
}
