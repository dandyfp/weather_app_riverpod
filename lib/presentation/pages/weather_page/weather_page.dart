import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:weather_app/api/base_url.dart';
import 'package:weather_app/helpers/shared_preferences_helper.dart';
import 'package:weather_app/presentation/commons/extention.dart';
import 'package:weather_app/presentation/commons/method_dimens.dart';
import 'package:weather_app/presentation/pages/weather_page/methods/action_button.dart';
import 'package:weather_app/presentation/pages/weather_page/methods/background.dart';
import 'package:weather_app/presentation/pages/weather_page/methods/item_stat.dart';
import 'package:weather_app/presentation/providers/router/router_provider.dart';
import 'package:weather_app/presentation/providers/weather/weather_detail_provider.dart';
import 'package:weather_app/presentation/widgets/basic_shadow.dart';
import 'package:extended_image/extended_image.dart';
import 'package:intl/intl.dart';

class WeatherPage extends ConsumerWidget {
  final String cityName;
  const WeatherPage({
    Key? key,
    required this.cityName,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    String cityLocal = SharedPreferencesHelper().getString('cityName') ?? '';
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
            Align(
              alignment: Alignment.bottomCenter,
              child: SizedBox(
                height: MediaQuery.of(context).size.height / 2,
                width: double.infinity,
                child: const BasicShadow(
                  topDown: false,
                ),
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height / 2,
              width: double.infinity,
              child: const BasicShadow(
                topDown: true,
              ),
            ),
            SafeArea(
              child: Padding(
                padding: const EdgeInsets.only(
                  top: 30,
                  left: 24,
                  right: 24,
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(bottom: 120),
                      child: Row(
                        children: [
                          actionButton(
                            title: 'City',
                            onTap: () => ref.read(routerProvider).pushNamed('pick-place-page'),
                            icon: Icons.edit,
                          ),
                          horizontalSpace(8),
                          actionButton(
                            title: 'Refresh',
                            onTap: () => ref.read(routerProvider).pushReplacementNamed('weather-page', extra: cityLocal),
                            icon: Icons.refresh,
                          ),
                          horizontalSpace(8),
                          actionButton(
                            title: 'Hourly',
                            onTap: () => ref.read(routerProvider).pushNamed('hourly-forecast-page', extra: cityLocal),
                            icon: Icons.access_time,
                          ),
                        ],
                      ),
                    ),
                    Text(
                      data.name,
                      style: const TextStyle(
                        fontSize: 30,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        shadows: [
                          Shadow(
                            blurRadius: 6,
                            color: Colors.black12,
                            offset: Offset(2, 2),
                          ),
                        ],
                      ),
                    ),
                    Text(
                      '- ${data.weather.first.main} -',
                      style: const TextStyle(
                        fontSize: 14,
                        color: Colors.white70,
                        fontWeight: FontWeight.bold,
                        shadows: [
                          Shadow(
                            blurRadius: 6,
                            color: Colors.black26,
                            offset: Offset(2, 2),
                          ),
                        ],
                      ),
                    ),
                    ExtendedImage.network(BaseUrl.iconWeather(data.weather.first.icon)),
                    Text(
                      data.weather.first.description.capitalize,
                      style: const TextStyle(
                        fontSize: 20,
                        color: Colors.white,
                        shadows: [
                          Shadow(
                            blurRadius: 6,
                            color: Colors.black26,
                            offset: Offset(2, 2),
                          ),
                        ],
                      ),
                    ),
                    Text(
                      DateFormat('EEE, d MMM yyy').format(DateTime.now()),
                      style: const TextStyle(
                        fontSize: 12,
                        color: Colors.white70,
                        shadows: [
                          Shadow(
                            blurRadius: 6,
                            color: Colors.black26,
                            offset: Offset(2, 2),
                          ),
                        ],
                      ),
                    ),
                    verticalSpace(20),
                    Text(
                      '${(data.main.temp - 273.15).round()}\u2103',
                      style: const TextStyle(
                        fontSize: 50,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        shadows: [
                          Shadow(
                            blurRadius: 6,
                            color: Colors.black26,
                            offset: Offset(2, 2),
                          ),
                        ],
                      ),
                    ),
                    verticalSpace(20),
                    GridView(
                      padding: const EdgeInsets.all(0),
                      physics: const NeverScrollableScrollPhysics(),
                      shrinkWrap: true,
                      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                        mainAxisExtent: 60,
                        mainAxisSpacing: 8,
                        crossAxisSpacing: 8,
                      ),
                      children: [
                        itemStat(
                          icon: Icons.thermostat,
                          title: 'Temperature',
                          data: '${data.main.temp}°K',
                          context: context,
                        ),
                        itemStat(
                          icon: Icons.air,
                          title: 'Wind',
                          data: '${data.wind.speed}°m/s',
                          context: context,
                        ),
                        itemStat(
                          icon: Icons.compare_arrows,
                          title: 'Pressure',
                          data: '${NumberFormat.currency(
                            decimalDigits: 0,
                            symbol: '',
                          ).format(data.main.pressure)}hPa',
                          context: context,
                        ),
                        itemStat(
                          icon: Icons.water_drop_outlined,
                          title: 'Humidity',
                          data: '${data.main.temp}°K',
                          context: context,
                        ),
                      ],
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
