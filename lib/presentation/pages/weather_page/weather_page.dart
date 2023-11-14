import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:weather_app/presentation/pages/weather_page/methods/background.dart';
import 'package:weather_app/presentation/providers/weather/weather_detail_provider.dart';

class WeatherPage extends ConsumerWidget {
  final String cityName;
  const WeatherPage({
    Key? key,
    required this.cityName,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    var asyncWeather = ref.watch(WeatherDetailProvider(cityName: cityName));
    return Scaffold(
      body: asyncWeather.when(
          loading: () => const Center(
                child: CircularProgressIndicator(),
              ),
          error: (error, stackTrace) => const Text('-'),
          data: (data) => Stack(
                children: [
                  backGround(data!, context),
                ],
              )),
    );
  }
}
