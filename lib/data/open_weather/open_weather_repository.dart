import 'package:weather_app/api/key.dart';
import 'package:weather_app/data/repository/weather_repository.dart';
import 'package:weather_app/domain/entities/data_hourly_forecast.dart';
import 'package:weather_app/domain/entities/data_weather.dart';
import 'package:weather_app/domain/entities/result.dart';
import 'package:dio/dio.dart';

class OpenWeatherRepository implements WeatherRepository {
  final Dio? _dio;
  OpenWeatherRepository({Dio? dio}) : _dio = dio ?? Dio();

  late final Options _options = Options(headers: {
    'accept': 'application/json',
  });
  @override
  Future<Result<DataWeather>> getCurrentWeather({required String cityName}) async {
    try {
      var response = await _dio!.get(
        "https://api.openweathermap.org/data/2.5/weather?q=$cityName,ID&appid=$apiKey",
        options: _options,
      );
      return Result.success(DataWeather.fromJson(response.data));
    } on DioException catch (e) {
      return Result.failed(e.message ?? '');
    }
  }

  @override
  Future<Result<DataHourlyForecast>> gethourlyForeCast({required String cityName}) async {
    try {
      var response = await _dio!.get(
        "api.openweathermap.org/data/2.5/forecast?q=$cityName,ID&appid=$apiKey",
        options: _options,
      );
      return Result.success(DataHourlyForecast.fromJson(response.data));
    } on DioException catch (e) {
      return Result.failed(e.message ?? '');
    }
  }
}
