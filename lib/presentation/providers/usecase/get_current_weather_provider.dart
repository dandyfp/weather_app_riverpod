import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:weather_app/domain/usecases/get_current_weather/get_current_weather.dart';
import 'package:weather_app/presentation/providers/repository/current_weather_repository_provider.dart';

part 'get_current_weather_provider.g.dart';

@riverpod
GetCurrentWeather getCurrentWeather(GetCurrentWeatherRef ref) => GetCurrentWeather(weatherRepository: ref.watch(currentWeatherRepositoryProvider));
