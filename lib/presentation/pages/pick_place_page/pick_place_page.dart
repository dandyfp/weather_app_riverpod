import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:weather_app/presentation/commons/method_dimens.dart';
import 'package:weather_app/presentation/providers/router/router_provider.dart';

class PickPlacePage extends ConsumerWidget {
  const PickPlacePage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final TextEditingController cityNameController = TextEditingController();

    /*  ref.listen(
      weatherDataProvider,
      (previous, next) {
        if (next is AsyncData) {
          if (next.value != null) {
            ref.read(routerProvider).goNamed('weather-page', extra: '');
          }
        } else if (next is AsyncError) {
          context.showSnackBar(next.error.toString());
        }
      },
    ); */
    return Scaffold(
      body: Stack(
        children: [
          SizedBox(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            child: Image.asset(
              'assets/images/sky.jpg',
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
                  Text(
                    'Set Up\nyour location',
                    style: GoogleFonts.poppins(
                      color: Colors.purple,
                      fontSize: 24,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
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
                            controller: cityNameController,
                            decoration: const InputDecoration(
                                isDense: true,
                                contentPadding: EdgeInsets.all(0),
                                border: InputBorder.none,
                                hintText: 'Type city name',
                                hintStyle: TextStyle(
                                  color: Colors.grey,
                                  fontWeight: FontWeight.bold,
                                )),
                          ),
                        ),
                        IconButton.filledTonal(
                          onPressed: () {
                            FocusManager.instance.primaryFocus?.unfocus();
                            if (cityNameController.text.isNotEmpty) {
                              ref.read(routerProvider).goNamed('weather-page', extra: cityNameController.text);
                            }
                          },
                          icon: const Icon(Icons.check),
                        )
                      ],
                    ),
                  ),
                  /* SizedBox(
                    width: MediaQuery.of(context).size.width - 48,
                    child: KTextField(
                      controller: cityNameController,
                      maxLines: 1,
                      isDense: true,
                      backgroundColor: Colors.white,
                      borderRadius: 20,
                      suffixIcon: GestureDetector(
                        onTap: () {
                          
                        },
                        child: Container(
                          height: 15,
                          width: 80,
                          decoration: BoxDecoration(
                            color: Colors.purple.withOpacity(0.3),
                            borderRadius: const BorderRadius.only(
                              topRight: Radius.circular(20),
                              bottomRight: Radius.circular(20),
                              bottomLeft: Radius.circular(20),
                            ),
                          ),
                          child: const Center(
                            child: Icon(
                              Icons.send,
                              size: 20,
                              color: Colors.purple,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ), */
                  // Text(desc.valueOrNull?.weather.first.description ?? '-')
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
