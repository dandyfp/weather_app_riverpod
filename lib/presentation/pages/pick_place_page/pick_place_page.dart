import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:weather_app/presentation/commons/method_dimens.dart';
import 'package:weather_app/presentation/widgets/textfield.dart';

class PickPlacePage extends ConsumerWidget {
  const PickPlacePage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
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
                  verticalSpace(10),
                  SizedBox(
                    width: MediaQuery.of(context).size.width - 48,
                    child: KTextField(),
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
