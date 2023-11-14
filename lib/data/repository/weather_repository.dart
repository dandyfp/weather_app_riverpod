import 'package:weather_app/domain/entities/data_hourly_forecast.dart';
import 'package:weather_app/domain/entities/data_weather.dart';
import 'package:weather_app/domain/entities/result.dart';

abstract interface class WeatherRepository {
  Future<Result<DataWeather>> getCurrentWeather({required String cityName});
  Future<Result<DataHourlyForecast>> gethourlyForeCast({required String cityName});
}
