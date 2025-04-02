import 'package:calculator_app/features/calculator_home/presentation/views/widgets/calculation_result.dart';
import 'package:calculator_app/features/calculator_home/presentation/views/widgets/calculator_buttons.dart';
import 'package:flutter/material.dart';

class CalculatorHomeViewBody extends StatelessWidget {
  const CalculatorHomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CalculationResult(),
        CalculatorButtons()
      ],
    );
  }
}