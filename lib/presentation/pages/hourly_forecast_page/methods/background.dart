import 'package:flutter/material.dart';
import 'package:weather_app/presentation/commons/app_constant.dart';

Widget backGroundHourlyForecast(BuildContext context) {
  return SizedBox(
    height: MediaQuery.of(context).size.height,
    width: double.infinity,
    child: Image.asset(
      weatherGB['Shower rain']!,
      fit: BoxFit.cover,
    ),
  );
}
