import 'package:weather_app/data/open_weather/open_weather_repository.dart';
import 'package:weather_app/data/repository/weather_repository.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'current_weather_repository_provider.g.dart';

@riverpod
WeatherRepository currentWeatherRepository(CurrentWeatherRepositoryRef ref) => OpenWeatherRepository();
