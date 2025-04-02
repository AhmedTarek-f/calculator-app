import 'package:calculator_app/core/utils/screen_size.dart';
import 'package:calculator_app/features/calculator_home/presentation/views/widgets/ac_and_delete_column.dart';
import 'package:calculator_app/features/calculator_home/presentation/views/widgets/division_and_multiplication_column.dart';
import 'package:flutter/material.dart';

class CalculatorButtons extends StatelessWidget {
  const CalculatorButtons({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: Padding(
          padding: EdgeInsets.only(
            right: ScreenSize.getWidth(context)*0.09,
            left: ScreenSize.getWidth(context)*0.09,
            bottom: ScreenSize.getHeight(context)*0.0492,
          ),
          child: Row(
            children: [
              const ACAndDeleteColumn(),
              SizedBox(width: ScreenSize.getWidth(context)*0.053,),
              const DivisionAndMultiplicationColumn(),
            ],
          ),
        )
    );
  }
}