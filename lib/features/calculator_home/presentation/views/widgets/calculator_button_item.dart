import 'package:calculator_app/core/constants/app_colors.dart';
import 'package:calculator_app/core/constants/app_styles.dart';
import 'package:calculator_app/core/utils/screen_size.dart';
import 'package:calculator_app/features/calculator_home/data/models/button_model.dart';
import 'package:calculator_app/features/calculator_home/presentation/views_model/calculator_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CalculatorButtonItem extends StatelessWidget {
  const CalculatorButtonItem({
    super.key,
    required this.buttonData,
  });

  final ButtonModel buttonData;

  @override
  Widget build(BuildContext context) {
    final controller = BlocProvider.of<CalculatorCubit>(context);
    return Container(
      width: buttonData.width ?? ScreenSize.getWidth(context)*0.1653,
      height: buttonData.height ?? ScreenSize.getHeight(context)*0.07635,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(ScreenSize.getWidth(context)*0.0426),
          boxShadow: [
              BoxShadow(
                  color: buttonData.buttonBackgroundColor?.withValues(alpha: 0.6) ?? AppColors.gray.withValues(alpha: 0.6),
                  blurStyle: BlurStyle.outer,
                  blurRadius: 5
              )
            ]
      ),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          padding: EdgeInsets.zero,
          backgroundColor: buttonData.buttonBackgroundColor?? AppColors.gray,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(ScreenSize.getWidth(context)*0.0426)),
          alignment: Alignment.center,
          overlayColor: AppColors.lightBlue.withValues(alpha: 0.8),
        ),

        onPressed: (){
          controller.changeCalculatorValue(value: buttonData.buttonLabel);
        },
        child: !buttonData.buttonLabel.contains(".svg")?
        Padding(
          padding: buttonData.buttonLabel == "." ? EdgeInsets.only(bottom: ScreenSize.getHeight(context)*0.014): EdgeInsets.zero,
          child: Text(
            buttonData.buttonLabel,
            style: buttonData.buttonLabelStyle??AppStyles.fontSize32Medium,
            textAlign: TextAlign.center,
          ),
        ):
        SvgPicture.asset(
          buttonData.buttonLabel,
          fit: BoxFit.scaleDown,
          alignment: Alignment.center,
        ),
      ),
    );
  }
}