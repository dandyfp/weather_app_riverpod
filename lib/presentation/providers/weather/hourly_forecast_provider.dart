import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:weather_app/domain/entities/data_hourly_forecast.dart';
import 'package:weather_app/domain/entities/result.dart';
import 'package:weather_app/domain/usecases/get_hourly_forecast/get_hourly_forecast.dart';
import 'package:weather_app/domain/usecases/get_hourly_forecast/get_hourly_forecast_param.dart';
import 'package:weather_app/presentation/providers/usecase/get_hourly_forecast_provider.dart';

part 'hourly_forecast_provider.g.dart';

@riverpod
Future<DataHourlyForecast?> hourlyForecast(HourlyForecastRef ref, {required String cityName}) async {
  GetHourlyForecast getHourlyForecast = ref.read(getHourlyForecastProvider);

  var getHourlyForecastResult = await getHourlyForecast(GetHourlyForecastParam(cityName: cityName));

  return switch (getHourlyForecastResult) {
    Success(value: final hourlyForecast) => hourlyForecast,
    Failed(message: _) => null,
  };
}
