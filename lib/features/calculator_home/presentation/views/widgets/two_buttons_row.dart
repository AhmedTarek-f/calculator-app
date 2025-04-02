import 'package:calculator_app/core/utils/screen_size.dart';
import 'package:calculator_app/features/calculator_home/data/models/button_model.dart';
import 'package:calculator_app/features/calculator_home/presentation/views/widgets/calculator_button_item.dart';
import 'package:flutter/material.dart';

class TwoButtonsRow extends StatelessWidget {
  const TwoButtonsRow({super.key, required this.firstButtonData, required this.secondButtonData});
  final ButtonModel firstButtonData;
  final ButtonModel secondButtonData;
  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(child: CalculatorButtonItem(buttonData: firstButtonData)),
        SizedBox(width: ScreenSize.getWidth(context)*0.053,),
        Expanded(child: CalculatorButtonItem(buttonData: secondButtonData)),
      ],
    );
  }
}