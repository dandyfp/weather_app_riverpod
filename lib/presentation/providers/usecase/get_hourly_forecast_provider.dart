import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:weather_app/domain/usecases/get_hourly_forecast/get_hourly_forecast.dart';
import 'package:weather_app/presentation/providers/repository/hourly_forecast_repository_provider.dart';

part 'get_hourly_forecast_provider.g.dart';

@riverpod
GetHourlyForecast getHourlyForecast(GetHourlyForecastRef ref) => GetHourlyForecast(weatherRepository: ref.watch(hourlyForecastRepositoryProvider));
