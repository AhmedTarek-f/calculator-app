import 'package:calculator_app/core/utils/buttons_data.dart';
import 'package:calculator_app/core/utils/screen_size.dart';
import 'package:calculator_app/features/calculator_home/presentation/views/widgets/calculator_button_item.dart';
import 'package:flutter/material.dart';

class DivisionColumn extends StatelessWidget {
  const DivisionColumn({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        children: [
          const CalculatorButtonItem(buttonData: ButtonsData.divisionButton),
          SizedBox(height: ScreenSize.getHeight(context)*0.027,),
          const CalculatorButtonItem(buttonData: ButtonsData.numberNine),
          SizedBox(height: ScreenSize.getHeight(context)*0.0197,),
          const CalculatorButtonItem(buttonData: ButtonsData.numberSix),
          SizedBox(height: ScreenSize.getHeight(context)*0.0197,),
          const CalculatorButtonItem(buttonData: ButtonsData.numberThree),
          SizedBox(height: ScreenSize.getHeight(context)*0.0369,),
          const CalculatorButtonItem(buttonData: ButtonsData.dotButton),
        ],
      ),
    );
  }
}