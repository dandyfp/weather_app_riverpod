// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'data_hourly_forecast.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

DataHourlyForecast _$DataHourlyForecastFromJson(Map<String, dynamic> json) {
  return _DataHourlyForecast.fromJson(json);
}

/// @nodoc
mixin _$DataHourlyForecast {
  String? get cod => throw _privateConstructorUsedError;
  int? get message => throw _privateConstructorUsedError;
  int? get cnt => throw _privateConstructorUsedError;
  List<DataWeather> get list => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DataHourlyForecastCopyWith<DataHourlyForecast> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DataHourlyForecastCopyWith<$Res> {
  factory $DataHourlyForecastCopyWith(
          DataHourlyForecast value, $Res Function(DataHourlyForecast) then) =
      _$DataHourlyForecastCopyWithImpl<$Res, DataHourlyForecast>;
  @useResult
  $Res call({String? cod, int? message, int? cnt, List<DataWeather> list});
}

/// @nodoc
class _$DataHourlyForecastCopyWithImpl<$Res, $Val extends DataHourlyForecast>
    implements $DataHourlyForecastCopyWith<$Res> {
  _$DataHourlyForecastCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? cod = freezed,
    Object? message = freezed,
    Object? cnt = freezed,
    Object? list = null,
  }) {
    return _then(_value.copyWith(
      cod: freezed == cod
          ? _value.cod
          : cod // ignore: cast_nullable_to_non_nullable
              as String?,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as int?,
      cnt: freezed == cnt
          ? _value.cnt
          : cnt // ignore: cast_nullable_to_non_nullable
              as int?,
      list: null == list
          ? _value.list
          : list // ignore: cast_nullable_to_non_nullable
              as List<DataWeather>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DataHourlyForecastImplCopyWith<$Res>
    implements $DataHourlyForecastCopyWith<$Res> {
  factory _$$DataHourlyForecastImplCopyWith(_$DataHourlyForecastImpl value,
          $Res Function(_$DataHourlyForecastImpl) then) =
      __$$DataHourlyForecastImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? cod, int? message, int? cnt, List<DataWeather> list});
}

/// @nodoc
class __$$DataHourlyForecastImplCopyWithImpl<$Res>
    extends _$DataHourlyForecastCopyWithImpl<$Res, _$DataHourlyForecastImpl>
    implements _$$DataHourlyForecastImplCopyWith<$Res> {
  __$$DataHourlyForecastImplCopyWithImpl(_$DataHourlyForecastImpl _value,
      $Res Function(_$DataHourlyForecastImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? cod = freezed,
    Object? message = freezed,
    Object? cnt = freezed,
    Object? list = null,
  }) {
    return _then(_$DataHourlyForecastImpl(
      cod: freezed == cod
          ? _value.cod
          : cod // ignore: cast_nullable_to_non_nullable
              as String?,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as int?,
      cnt: freezed == cnt
          ? _value.cnt
          : cnt // ignore: cast_nullable_to_non_nullable
              as int?,
      list: null == list
          ? _value._list
          : list // ignore: cast_nullable_to_non_nullable
              as List<DataWeather>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DataHourlyForecastImpl implements _DataHourlyForecast {
  const _$DataHourlyForecastImpl(
      {this.cod, this.message, this.cnt, required final List<DataWeather> list})
      : _list = list;

  factory _$DataHourlyForecastImpl.fromJson(Map<String, dynamic> json) =>
      _$$DataHourlyForecastImplFromJson(json);

  @override
  final String? cod;
  @override
  final int? message;
  @override
  final int? cnt;
  final List<DataWeather> _list;
  @override
  List<DataWeather> get list {
    if (_list is EqualUnmodifiableListView) return _list;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_list);
  }

  @override
  String toString() {
    return 'DataHourlyForecast(cod: $cod, message: $message, cnt: $cnt, list: $list)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DataHourlyForecastImpl &&
            (identical(other.cod, cod) || other.cod == cod) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.cnt, cnt) || other.cnt == cnt) &&
            const DeepCollectionEquality().equals(other._list, _list));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, cod, message, cnt,
      const DeepCollectionEquality().hash(_list));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DataHourlyForecastImplCopyWith<_$DataHourlyForecastImpl> get copyWith =>
      __$$DataHourlyForecastImplCopyWithImpl<_$DataHourlyForecastImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DataHourlyForecastImplToJson(
      this,
    );
  }
}

abstract class _DataHourlyForecast implements DataHourlyForecast {
  const factory _DataHourlyForecast(
      {final String? cod,
      final int? message,
      final int? cnt,
      required final List<DataWeather> list}) = _$DataHourlyForecastImpl;

  factory _DataHourlyForecast.fromJson(Map<String, dynamic> json) =
      _$DataHourlyForecastImpl.fromJson;

  @override
  String? get cod;
  @override
  int? get message;
  @override
  int? get cnt;
  @override
  List<DataWeather> get list;
  @override
  @JsonKey(ignore: true)
  _$$DataHourlyForecastImplCopyWith<_$DataHourlyForecastImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
