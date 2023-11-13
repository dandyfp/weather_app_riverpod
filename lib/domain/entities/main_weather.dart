import 'package:freezed_annotation/freezed_annotation.dart';

part 'main_weather.freezed.dart';
part 'main_weather.g.dart';

@freezed
class MainWeather with _$MainWeather {
  const factory MainWeather({
    required num temp,
    required num pressure,
    required int humidity,
  }) = _MainWeather;

  factory MainWeather.fromJson(Map<String, dynamic> json) => _$MainWeatherFromJson(json);
}
