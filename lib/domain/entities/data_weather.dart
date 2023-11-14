import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:weather_app/domain/entities/main_weather.dart';
import 'package:weather_app/domain/entities/weather.dart';
import 'package:weather_app/domain/entities/wind.dart';

part 'data_weather.freezed.dart';
part 'data_weather.g.dart';

@freezed
class DataWeather with _$DataWeather {
  const factory DataWeather({
    required int id,
    required List<Weather> weather,
    required MainWeather main,
    required Wind wind,
    required String name,
    num? timeZone,
  }) = _DataWeather;

  factory DataWeather.fromJson(Map<String, dynamic> json) => _$DataWeatherFromJson(json);
}
