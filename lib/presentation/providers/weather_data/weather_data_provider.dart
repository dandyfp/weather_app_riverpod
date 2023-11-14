import 'package:flutter/material.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:weather_app/domain/entities/data_weather.dart';
import 'package:weather_app/domain/entities/result.dart';
import 'package:weather_app/domain/usecases/get_current_weather/get_current_weather.dart';
import 'package:weather_app/domain/usecases/get_current_weather/get_current_weather_param.dart';
import 'package:weather_app/presentation/providers/usecase/get_current_weather_provider.dart';

part 'weather_data_provider.g.dart';

@Riverpod(keepAlive: true)
class WeatherData extends _$WeatherData {
  @override
  Future<DataWeather?> build() async {
    GetCurrentWeather getCurrentWeather = await ref.read(getCurrentWeatherProvider);
    var weatherResult = await getCurrentWeather(GetCurrentWeatherParam(cityName: ''));

    switch (weatherResult) {
      case Success(value: final weather):
        return weather;
      case Failed(message: _):
        return null;
    }
  }

  Future<DataWeather?> getWeatherData({
    required String cityName,
  }) async {
    state = const AsyncLoading();

    GetCurrentWeather login = ref.read(getCurrentWeatherProvider);

    var result = await login(
      GetCurrentWeatherParam(cityName: cityName),
    );

    switch (result) {
      case Success(value: final weather):
        state = AsyncData(weather);
        return weather;
      case Failed(:final message):
        state = AsyncError(FlutterError(message), StackTrace.current);
        state = const AsyncData(null);
        return null;
    }
  }
}
