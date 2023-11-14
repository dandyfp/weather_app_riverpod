import 'package:weather_app/data/repository/weather_repository.dart';
import 'package:weather_app/domain/entities/data_hourly_forecast.dart';
import 'package:weather_app/domain/entities/result.dart';
import 'package:weather_app/domain/usecases/get_hourly_forecast/get_hourly_forecast_param.dart';
import 'package:weather_app/domain/usecases/usecase.dart';

class GetHourlyForecast implements UseCase<Result<DataHourlyForecast>, GetHourlyForecastParam> {
  final WeatherRepository _weatherRepository;

  GetHourlyForecast({required WeatherRepository weatherRepository}) : _weatherRepository = weatherRepository;

  @override
  Future<Result<DataHourlyForecast>> call(GetHourlyForecastParam params) async {
    var resultGetHourlyForecast = await _weatherRepository.gethourlyForeCast(cityName: params.cityName);
    return switch (resultGetHourlyForecast) {
      Success(value: final hourlyForecast) => Result.success(hourlyForecast),
      Failed(:final message) => Result.failed(message)
    };
  }
}
