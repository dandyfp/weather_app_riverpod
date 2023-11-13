import 'package:weather_app/data/repository/weather_repository.dart';
import 'package:weather_app/domain/entities/data_weather.dart';
import 'package:weather_app/domain/entities/result.dart';
import 'package:weather_app/domain/usecases/get_current_weather/get_current_weather_param.dart';
import 'package:weather_app/domain/usecases/usecase.dart';

class GetCurrentWeather implements UseCase<Result<DataWeather>, GetCurrentWeatherParam> {
  final WeatherRepository _weatherRepository;

  GetCurrentWeather({required WeatherRepository weatherRepository}) : _weatherRepository = weatherRepository;

  @override
  Future<Result<DataWeather>> call(GetCurrentWeatherParam params) async {
    var resultGetCurrentWeather = await _weatherRepository.getCurrentWeather(cityName: params.cityName);
    return switch (resultGetCurrentWeather) {
      Success(value: final currentWether) => Result.success(currentWether),
      Failed(:final message) => Result.failed(message)
    };
  }
}
