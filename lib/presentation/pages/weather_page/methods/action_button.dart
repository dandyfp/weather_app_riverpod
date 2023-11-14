import 'package:flutter/material.dart';
import 'package:weather_app/presentation/commons/method_dimens.dart';

Widget actionButton({
  required String title,
  required VoidCallback onTap,
  required IconData icon,
}) =>
    Expanded(
      child: Material(
        color: Colors.white.withOpacity(0.3),
        borderRadius: BorderRadius.circular(30),
        child: InkWell(
          onTap: onTap,
          borderRadius: BorderRadius.circular(30),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  title,
                  style: const TextStyle(
                    fontSize: 12,
                    color: Colors.white,
                  ),
                ),
                horizontalSpace(4),
                Icon(
                  icon,
                  size: 12,
                  color: Colors.white,
                )
              ],
            ),
          ),
        ),
      ),
    );
