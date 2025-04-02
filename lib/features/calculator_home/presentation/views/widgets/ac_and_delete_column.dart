import 'package:calculator_app/core/utils/buttons_data.dart';
import 'package:calculator_app/core/utils/screen_size.dart';
import 'package:calculator_app/features/calculator_home/presentation/views/widgets/calculator_button_item.dart';
import 'package:calculator_app/features/calculator_home/presentation/views/widgets/two_buttons_row.dart';
import 'package:flutter/material.dart';

class ACAndDeleteColumn extends StatelessWidget {
  const ACAndDeleteColumn({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        children: [
          TwoButtonsRow(
              firstButtonData: ButtonsData.acButton,
              secondButtonData: ButtonsData.deleteButton
          ),
          SizedBox(height: ScreenSize.getHeight(context)*0.027,),
          const TwoButtonsRow(
              firstButtonData: ButtonsData.numberSeven,
              secondButtonData: ButtonsData.numberEight
          ),
          SizedBox(height: ScreenSize.getHeight(context)*0.0197,),
          const TwoButtonsRow(
              firstButtonData: ButtonsData.numberFour,
              secondButtonData: ButtonsData.numberFive
          ),
          SizedBox(height: ScreenSize.getHeight(context)*0.0197,),
          const TwoButtonsRow(
              firstButtonData: ButtonsData.numberOne,
              secondButtonData: ButtonsData.numberTwo
          ),
          SizedBox(height: ScreenSize.getHeight(context)*0.0369,),
          CalculatorButtonItem(buttonData: ButtonsData.numberZero(context)),

        ],
      ),
    );
  }
}