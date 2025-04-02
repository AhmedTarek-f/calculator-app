import 'package:calculator_app/core/constants/app_colors.dart';
import 'package:calculator_app/core/constants/app_icons.dart';
import 'package:calculator_app/core/constants/app_styles.dart';
import 'package:calculator_app/core/utils/screen_size.dart';
import 'package:calculator_app/features/calculator_home/data/models/button_model.dart';
import 'package:flutter/material.dart';

abstract class ButtonsData{
  static ButtonModel acButton = ButtonModel(
    buttonLabel: "Ac",
    buttonBackgroundColor: AppColors.lightGray,
    buttonLabelStyle: AppStyles.fontSize24Normal,
  );
  static const ButtonModel dotButton = ButtonModel(
    buttonLabel: ".",
  );
  static ButtonModel numberZero(BuildContext context){
    return ButtonModel(
      buttonLabel: "0",
      height: ScreenSize.getHeight(context)*0.07389,
      width: ScreenSize.getWidth(context)*0.384,
    );
  }
  static const ButtonModel numberOne = ButtonModel(
    buttonLabel: "1",
  );
  static const ButtonModel numberTwo = ButtonModel(
    buttonLabel: "2",
  );
  static const ButtonModel numberThree = ButtonModel(
    buttonLabel: "3",
  );
  static const ButtonModel numberFour = ButtonModel(
    buttonLabel: "4",
  );
  static const ButtonModel numberFive = ButtonModel(
    buttonLabel: "5",
  );
  static const ButtonModel numberSix = ButtonModel(
    buttonLabel: "6",
  );
  static const ButtonModel numberSeven = ButtonModel(
    buttonLabel: "7",
  );
  static const ButtonModel numberEight = ButtonModel(
    buttonLabel: "8",
  );
  static const ButtonModel numberNine = ButtonModel(
    buttonLabel: "9",
  );
  static ButtonModel plusButton(BuildContext context) {
    return ButtonModel(
        buttonLabel: "+",
        buttonBackgroundColor: AppColors.darkBlue,
        buttonLabelStyle: AppStyles.fontSize32Medium.copyWith(color: const Color(0xff24A5FF)),
        height: ScreenSize.getHeight(context)*0.118226
    );
  }
  static const ButtonModel deleteButton = ButtonModel(
    buttonLabel: AppIcons.deleteIcon,
    buttonBackgroundColor: AppColors.lightGray,
  );
  static const ButtonModel divisionButton = ButtonModel(
    buttonLabel: AppIcons.divisionIcon,
    buttonBackgroundColor: AppColors.darkBlue,
  );
  static const ButtonModel multiplicationButton = ButtonModel(
    buttonLabel: AppIcons.multiplicationIcon,
    buttonBackgroundColor: AppColors.darkBlue,
  );
  static ButtonModel minusButton = ButtonModel(
      buttonLabel: "-",
      buttonBackgroundColor: AppColors.darkBlue,
      buttonLabelStyle: AppStyles.fontSize32Medium.copyWith(color: const Color(0xff24A5FF))
  );
  static ButtonModel equalButton(BuildContext context) {
    return ButtonModel(
        buttonLabel: "=",
        buttonBackgroundColor: const Color(0xff1991FF),
        buttonLabelStyle: AppStyles.fontSize32Medium.copyWith(color: AppColors.white),
        height: ScreenSize.getHeight(context)*0.13822
    );
  }
}