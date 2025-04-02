import 'package:calculator_app/core/utils/buttons_data.dart';
import 'package:calculator_app/core/utils/screen_size.dart';
import 'package:calculator_app/features/calculator_home/presentation/views/widgets/calculator_button_item.dart';
import 'package:flutter/material.dart';

class MultiplicationColumn extends StatelessWidget {
  const MultiplicationColumn({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        children: [
          const CalculatorButtonItem(buttonData: ButtonsData.multiplicationButton),
          SizedBox(height: ScreenSize.getHeight(context)*0.027,),
          CalculatorButtonItem(buttonData: ButtonsData.minusButton),
          SizedBox(height: ScreenSize.getHeight(context)*0.0197,),
          CalculatorButtonItem(buttonData: ButtonsData.plusButton(context)),
          SizedBox(height: ScreenSize.getHeight(context)*0.032,),
          CalculatorButtonItem(buttonData: ButtonsData.equalButton(context)),
        ],
      ),
    );
  }
}