// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'main_weather.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$MainWeatherImpl _$$MainWeatherImplFromJson(Map<String, dynamic> json) =>
    _$MainWeatherImpl(
      temp: json['temp'] as num,
      pressure: json['pressure'] as num,
      humidity: json['humidity'] as int,
    );

Map<String, dynamic> _$$MainWeatherImplToJson(_$MainWeatherImpl instance) =>
    <String, dynamic>{
      'temp': instance.temp,
      'pressure': instance.pressure,
      'humidity': instance.humidity,
    };
