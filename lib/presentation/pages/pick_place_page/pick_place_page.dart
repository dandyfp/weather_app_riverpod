import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:weather_app/helpers/build_context_extension.dart';
import 'package:weather_app/helpers/shared_preferences_helper.dart';
import 'package:weather_app/presentation/commons/method_dimens.dart';
import 'package:weather_app/presentation/providers/router/router_provider.dart';
import 'package:weather_app/presentation/providers/weather_data/weather_data_provider.dart';

class PickPlacePage extends ConsumerWidget {
  PickPlacePage({super.key});

  final TextEditingController cityNameController = TextEditingController();
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    ref.listen(weatherDataProvider, (previous, next) {
      if (SharedPreferencesHelper().getString('cityName') != null) {
        ref.read(routerProvider).goNamed('weather-page', extra: SharedPreferencesHelper().getString('cityName'));
      } else {
        context.showSnackBar(next.asError.toString());
      }
    });
    return Scaffold(
      body: Stack(
        children: [
          SizedBox(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            child: Image.asset(
              'assets/images/weather.jpg',
              fit: BoxFit.cover,
            ),
          ),
          Positioned(
            top: MediaQuery.of(context).size.height / 4,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Set Up\nyour location',
                      style: Theme.of(context).textTheme.displaySmall!.copyWith(
                            fontWeight: FontWeight.w900,
                            color: Theme.of(context).primaryColor,
                          )),
                  verticalSpace(50),
                  Container(
                    width: MediaQuery.of(context).size.width - 48,
                    height: 50,
                    decoration: BoxDecoration(
                      color: Colors.white.withOpacity(0.7),
                      borderRadius: BorderRadius.circular(30),
                    ),
                    padding: const EdgeInsets.only(left: 30),
                    child: Row(
                      children: [
                        Expanded(
                          child: TextField(
                            textCapitalization: TextCapitalization.words,
                            keyboardType: TextInputType.name,
                            maxLines: 1,
                            controller: cityNameController,
                            decoration: const InputDecoration(
                              isDense: true,
                              contentPadding: EdgeInsets.all(0),
                              border: InputBorder.none,
                              hintText: 'Type city name',
                              hintStyle: TextStyle(
                                color: Colors.grey,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                        IconButton.filledTonal(
                          onPressed: () {
                            FocusManager.instance.primaryFocus?.unfocus();
                            if (cityNameController.text.isNotEmpty) {
                              SharedPreferencesHelper().putString('cityName', cityNameController.text);
                              ref.read(routerProvider).goNamed('weather-page', extra: cityNameController.text);
                            } else {
                              context.showSnackBar('Please enter your location name');
                            }
                          },
                          icon: const Icon(Icons.check),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
