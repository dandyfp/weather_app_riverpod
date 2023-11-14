// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'data_hourly_forecast.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$DataHourlyForecastImpl _$$DataHourlyForecastImplFromJson(
        Map<String, dynamic> json) =>
    _$DataHourlyForecastImpl(
      cod: json['cod'] as String?,
      message: json['message'] as int?,
      cnt: json['cnt'] as int?,
      list: (json['list'] as List<dynamic>)
          .map((e) => DataWeather.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$DataHourlyForecastImplToJson(
        _$DataHourlyForecastImpl instance) =>
    <String, dynamic>{
      'cod': instance.cod,
      'message': instance.message,
      'cnt': instance.cnt,
      'list': instance.list,
    };
