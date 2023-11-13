import 'package:weather_app/domain/entities/data_weather.dart';
import 'package:weather_app/domain/entities/result.dart';

abstract interface class WeatherRepository {
  Future<Result<DataWeather>> getCurrentWeather({required String cityName});
}
