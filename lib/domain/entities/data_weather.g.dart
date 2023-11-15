// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'data_weather.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$DataWeatherImpl _$$DataWeatherImplFromJson(Map<String, dynamic> json) =>
    _$DataWeatherImpl(
      id: json['id'] as int?,
      dt: json['dt'] as int?,
      weather: (json['weather'] as List<dynamic>)
          .map((e) => Weather.fromJson(e as Map<String, dynamic>))
          .toList(),
      main: MainWeather.fromJson(json['main'] as Map<String, dynamic>),
      wind: Wind.fromJson(json['wind'] as Map<String, dynamic>),
      name: json['name'] as String?,
      timeZone: json['timeZone'] as num?,
    );

Map<String, dynamic> _$$DataWeatherImplToJson(_$DataWeatherImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'dt': instance.dt,
      'weather': instance.weather,
      'main': instance.main,
      'wind': instance.wind,
      'name': instance.name,
      'timeZone': instance.timeZone,
    };
