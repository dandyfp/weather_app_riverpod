import 'package:flutter/material.dart';
import 'package:weather_app/presentation/commons/app_constant.dart';

Widget backGroundHourlyForecast(BuildContext context) {
  return Stack(
    children: [
      SizedBox(
        height: MediaQuery.of(context).size.height,
        width: double.infinity,
        child: Image.asset(
          weatherGB['Shower rain']!,
          fit: BoxFit.cover,
        ),
      ),
      Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        color: Colors.black38,
      ),
    ],
  );
}
