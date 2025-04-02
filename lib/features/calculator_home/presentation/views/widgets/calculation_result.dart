import 'package:calculator_app/core/constants/app_styles.dart';
import 'package:calculator_app/core/utils/screen_size.dart';
import 'package:flutter/material.dart';

class CalculationResult extends StatelessWidget {
  const CalculationResult({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: ScreenSize.getHeight(context)*0.418,
      width: ScreenSize.getWidth(context),
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: ScreenSize.getWidth(context)*0.048),
        child: Align(
          alignment: Alignment.centerRight,
          child: Text(
            "=12,454",
            style: AppStyles.fontSize48Medium,
          ),
        ),
      ),
    );
  }
}