import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:weather_app/presentation/pages/hourly_forecast_page/methods/background.dart';
import 'package:weather_app/presentation/pages/hourly_forecast_page/methods/foreground.dart';
import 'package:weather_app/presentation/providers/weather/hourly_forecast_provider.dart';

class HourlyForeCastPage extends ConsumerWidget {
  final String cityName;
  const HourlyForeCastPage({
    super.key,
    required this.cityName,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    var asyncHourlyForecast = ref.watch(HourlyForecastProvider(cityName: cityName));
    return Scaffold(
      body: asyncHourlyForecast.when(
        loading: () => const Center(
          child: CircularProgressIndicator(),
        ),
        error: (error, stackTrace) => const Text('-'),
        data: (data) => Stack(
          children: [
            backGroundHourlyForecast(context),
            foreground(data!),
          ],
        ),
      ),
    );
  }
}
