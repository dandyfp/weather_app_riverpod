import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:weather_app/data/open_weather/open_weather_repository.dart';
import 'package:weather_app/data/repository/weather_repository.dart';

part 'hourly_forecast_repository_provider.g.dart';

@riverpod
WeatherRepository hourlyForecastRepository(HourlyForecastRepositoryRef ref) => OpenWeatherRepository();
