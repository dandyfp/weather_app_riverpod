// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'data_weather.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

DataWeather _$DataWeatherFromJson(Map<String, dynamic> json) {
  return _DataWeather.fromJson(json);
}

/// @nodoc
mixin _$DataWeather {
  int get id => throw _privateConstructorUsedError;
  List<Weather> get weather => throw _privateConstructorUsedError;
  MainWeather get main => throw _privateConstructorUsedError;
  Wind get wind => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  num? get timeZone => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DataWeatherCopyWith<DataWeather> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DataWeatherCopyWith<$Res> {
  factory $DataWeatherCopyWith(
          DataWeather value, $Res Function(DataWeather) then) =
      _$DataWeatherCopyWithImpl<$Res, DataWeather>;
  @useResult
  $Res call(
      {int id,
      List<Weather> weather,
      MainWeather main,
      Wind wind,
      String name,
      num? timeZone});

  $MainWeatherCopyWith<$Res> get main;
  $WindCopyWith<$Res> get wind;
}

/// @nodoc
class _$DataWeatherCopyWithImpl<$Res, $Val extends DataWeather>
    implements $DataWeatherCopyWith<$Res> {
  _$DataWeatherCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? weather = null,
    Object? main = null,
    Object? wind = null,
    Object? name = null,
    Object? timeZone = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      weather: null == weather
          ? _value.weather
          : weather // ignore: cast_nullable_to_non_nullable
              as List<Weather>,
      main: null == main
          ? _value.main
          : main // ignore: cast_nullable_to_non_nullable
              as MainWeather,
      wind: null == wind
          ? _value.wind
          : wind // ignore: cast_nullable_to_non_nullable
              as Wind,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      timeZone: freezed == timeZone
          ? _value.timeZone
          : timeZone // ignore: cast_nullable_to_non_nullable
              as num?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $MainWeatherCopyWith<$Res> get main {
    return $MainWeatherCopyWith<$Res>(_value.main, (value) {
      return _then(_value.copyWith(main: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $WindCopyWith<$Res> get wind {
    return $WindCopyWith<$Res>(_value.wind, (value) {
      return _then(_value.copyWith(wind: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$DataWeatherImplCopyWith<$Res>
    implements $DataWeatherCopyWith<$Res> {
  factory _$$DataWeatherImplCopyWith(
          _$DataWeatherImpl value, $Res Function(_$DataWeatherImpl) then) =
      __$$DataWeatherImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      List<Weather> weather,
      MainWeather main,
      Wind wind,
      String name,
      num? timeZone});

  @override
  $MainWeatherCopyWith<$Res> get main;
  @override
  $WindCopyWith<$Res> get wind;
}

/// @nodoc
class __$$DataWeatherImplCopyWithImpl<$Res>
    extends _$DataWeatherCopyWithImpl<$Res, _$DataWeatherImpl>
    implements _$$DataWeatherImplCopyWith<$Res> {
  __$$DataWeatherImplCopyWithImpl(
      _$DataWeatherImpl _value, $Res Function(_$DataWeatherImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? weather = null,
    Object? main = null,
    Object? wind = null,
    Object? name = null,
    Object? timeZone = freezed,
  }) {
    return _then(_$DataWeatherImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      weather: null == weather
          ? _value._weather
          : weather // ignore: cast_nullable_to_non_nullable
              as List<Weather>,
      main: null == main
          ? _value.main
          : main // ignore: cast_nullable_to_non_nullable
              as MainWeather,
      wind: null == wind
          ? _value.wind
          : wind // ignore: cast_nullable_to_non_nullable
              as Wind,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      timeZone: freezed == timeZone
          ? _value.timeZone
          : timeZone // ignore: cast_nullable_to_non_nullable
              as num?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DataWeatherImpl implements _DataWeather {
  const _$DataWeatherImpl(
      {required this.id,
      required final List<Weather> weather,
      required this.main,
      required this.wind,
      required this.name,
      this.timeZone})
      : _weather = weather;

  factory _$DataWeatherImpl.fromJson(Map<String, dynamic> json) =>
      _$$DataWeatherImplFromJson(json);

  @override
  final int id;
  final List<Weather> _weather;
  @override
  List<Weather> get weather {
    if (_weather is EqualUnmodifiableListView) return _weather;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_weather);
  }

  @override
  final MainWeather main;
  @override
  final Wind wind;
  @override
  final String name;
  @override
  final num? timeZone;

  @override
  String toString() {
    return 'DataWeather(id: $id, weather: $weather, main: $main, wind: $wind, name: $name, timeZone: $timeZone)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DataWeatherImpl &&
            (identical(other.id, id) || other.id == id) &&
            const DeepCollectionEquality().equals(other._weather, _weather) &&
            (identical(other.main, main) || other.main == main) &&
            (identical(other.wind, wind) || other.wind == wind) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.timeZone, timeZone) ||
                other.timeZone == timeZone));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      const DeepCollectionEquality().hash(_weather),
      main,
      wind,
      name,
      timeZone);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DataWeatherImplCopyWith<_$DataWeatherImpl> get copyWith =>
      __$$DataWeatherImplCopyWithImpl<_$DataWeatherImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DataWeatherImplToJson(
      this,
    );
  }
}

abstract class _DataWeather implements DataWeather {
  const factory _DataWeather(
      {required final int id,
      required final List<Weather> weather,
      required final MainWeather main,
      required final Wind wind,
      required final String name,
      final num? timeZone}) = _$DataWeatherImpl;

  factory _DataWeather.fromJson(Map<String, dynamic> json) =
      _$DataWeatherImpl.fromJson;

  @override
  int get id;
  @override
  List<Weather> get weather;
  @override
  MainWeather get main;
  @override
  Wind get wind;
  @override
  String get name;
  @override
  num? get timeZone;
  @override
  @JsonKey(ignore: true)
  _$$DataWeatherImplCopyWith<_$DataWeatherImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
