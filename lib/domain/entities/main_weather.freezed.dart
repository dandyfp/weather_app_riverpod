// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'main_weather.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

MainWeather _$MainWeatherFromJson(Map<String, dynamic> json) {
  return _MainWeather.fromJson(json);
}

/// @nodoc
mixin _$MainWeather {
  num get temp => throw _privateConstructorUsedError;
  num get pressure => throw _privateConstructorUsedError;
  int get humidity => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MainWeatherCopyWith<MainWeather> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MainWeatherCopyWith<$Res> {
  factory $MainWeatherCopyWith(
          MainWeather value, $Res Function(MainWeather) then) =
      _$MainWeatherCopyWithImpl<$Res, MainWeather>;
  @useResult
  $Res call({num temp, num pressure, int humidity});
}

/// @nodoc
class _$MainWeatherCopyWithImpl<$Res, $Val extends MainWeather>
    implements $MainWeatherCopyWith<$Res> {
  _$MainWeatherCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? temp = null,
    Object? pressure = null,
    Object? humidity = null,
  }) {
    return _then(_value.copyWith(
      temp: null == temp
          ? _value.temp
          : temp // ignore: cast_nullable_to_non_nullable
              as num,
      pressure: null == pressure
          ? _value.pressure
          : pressure // ignore: cast_nullable_to_non_nullable
              as num,
      humidity: null == humidity
          ? _value.humidity
          : humidity // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MainWeatherImplCopyWith<$Res>
    implements $MainWeatherCopyWith<$Res> {
  factory _$$MainWeatherImplCopyWith(
          _$MainWeatherImpl value, $Res Function(_$MainWeatherImpl) then) =
      __$$MainWeatherImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({num temp, num pressure, int humidity});
}

/// @nodoc
class __$$MainWeatherImplCopyWithImpl<$Res>
    extends _$MainWeatherCopyWithImpl<$Res, _$MainWeatherImpl>
    implements _$$MainWeatherImplCopyWith<$Res> {
  __$$MainWeatherImplCopyWithImpl(
      _$MainWeatherImpl _value, $Res Function(_$MainWeatherImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? temp = null,
    Object? pressure = null,
    Object? humidity = null,
  }) {
    return _then(_$MainWeatherImpl(
      temp: null == temp
          ? _value.temp
          : temp // ignore: cast_nullable_to_non_nullable
              as num,
      pressure: null == pressure
          ? _value.pressure
          : pressure // ignore: cast_nullable_to_non_nullable
              as num,
      humidity: null == humidity
          ? _value.humidity
          : humidity // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MainWeatherImpl implements _MainWeather {
  const _$MainWeatherImpl(
      {required this.temp, required this.pressure, required this.humidity});

  factory _$MainWeatherImpl.fromJson(Map<String, dynamic> json) =>
      _$$MainWeatherImplFromJson(json);

  @override
  final num temp;
  @override
  final num pressure;
  @override
  final int humidity;

  @override
  String toString() {
    return 'MainWeather(temp: $temp, pressure: $pressure, humidity: $humidity)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MainWeatherImpl &&
            (identical(other.temp, temp) || other.temp == temp) &&
            (identical(other.pressure, pressure) ||
                other.pressure == pressure) &&
            (identical(other.humidity, humidity) ||
                other.humidity == humidity));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, temp, pressure, humidity);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MainWeatherImplCopyWith<_$MainWeatherImpl> get copyWith =>
      __$$MainWeatherImplCopyWithImpl<_$MainWeatherImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MainWeatherImplToJson(
      this,
    );
  }
}

abstract class _MainWeather implements MainWeather {
  const factory _MainWeather(
      {required final num temp,
      required final num pressure,
      required final int humidity}) = _$MainWeatherImpl;

  factory _MainWeather.fromJson(Map<String, dynamic> json) =
      _$MainWeatherImpl.fromJson;

  @override
  num get temp;
  @override
  num get pressure;
  @override
  int get humidity;
  @override
  @JsonKey(ignore: true)
  _$$MainWeatherImplCopyWith<_$MainWeatherImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
