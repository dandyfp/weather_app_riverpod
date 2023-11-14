// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'wind.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$WindImpl _$$WindImplFromJson(Map<String, dynamic> json) => _$WindImpl(
      speed: json['speed'] as num,
      deg: json['deg'] as int,
      gust: json['gust'] as num?,
      photoUrl: json['photoUrl'] as String?,
      balance: json['balance'] as int? ?? 0,
    );

Map<String, dynamic> _$$WindImplToJson(_$WindImpl instance) =>
    <String, dynamic>{
      'speed': instance.speed,
      'deg': instance.deg,
      'gust': instance.gust,
      'photoUrl': instance.photoUrl,
      'balance': instance.balance,
    };
