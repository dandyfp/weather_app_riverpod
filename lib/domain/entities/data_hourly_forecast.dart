import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:weather_app/domain/entities/data_weather.dart';

part 'data_hourly_forecast.freezed.dart';
part 'data_hourly_forecast.g.dart';

@freezed
class DataHourlyForecast with _$DataHourlyForecast {
  const factory DataHourlyForecast({
    String? cod,
    int? message,
    int? cnt,
    required List<DataWeather> list,
  }) = _DataHourlyForecast;

  factory DataHourlyForecast.fromJson(Map<String, dynamic> json) => _$DataHourlyForecastFromJson(json);
}
