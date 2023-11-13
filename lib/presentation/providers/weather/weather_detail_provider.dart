import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:weather_app/domain/entities/data_weather.dart';
import 'package:weather_app/domain/entities/result.dart';
import 'package:weather_app/domain/usecases/get_current_weather/get_current_weather.dart';
import 'package:weather_app/domain/usecases/get_current_weather/get_current_weather_param.dart';
import 'package:weather_app/presentation/providers/usecase/get_current_weather_provider.dart';

part 'weather_detail_provider.g.dart';

@riverpod
Future<DataWeather?> weatherDetail(WeatherDetailRef ref, {required String cityName}) async {
  GetCurrentWeather getCurrentWeather = ref.read(getCurrentWeatherProvider);

  var getWeatherDetailResult = await getCurrentWeather(GetCurrentWeatherParam(cityName: cityName));

  return switch (getWeatherDetailResult) {
    Success(value: final weatherDetail) => weatherDetail,
    Failed(message: _) => null,
  };
}
