import 'package:calculator_app/core/constants/app_styles.dart';
import 'package:calculator_app/core/utils/screen_size.dart';
import 'package:calculator_app/features/calculator_home/presentation/views_model/calculator_cubit.dart';
import 'package:calculator_app/features/calculator_home/presentation/views_model/calculator_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CalculationResult extends StatelessWidget {
  const CalculationResult({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final controller = BlocProvider.of<CalculatorCubit>(context);
    return SizedBox(
      height: ScreenSize.getHeight(context) * 0.4,
      width: ScreenSize.getWidth(context),
      child: Padding(
        padding: EdgeInsets.symmetric(
            horizontal: ScreenSize.getWidth(context) * 0.048),
        child: BlocBuilder<CalculatorCubit, CalculatorState>(
          builder: (context, state) {
            return Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                if(controller.beforeOperationValue != null) FittedBox(
                  child: Text(
                    controller.beforeOperationValue!,
                    style: AppStyles.fontSize32Normal,
                  ),
                ),
                if(controller.beforeOperationValue != null) SizedBox(height: ScreenSize.getHeight(context)*0.006,),
                if(controller.beforeOperationValue != null) Text(
                controller.currentOperator!,
                style: AppStyles.fontSize24Normal,
                ),
                if(controller.beforeOperationValue != null) SizedBox(height: ScreenSize.getHeight(context)*0.006,),
                FittedBox(
                  child: Text(
                    state.calculationValue,
                    style: AppStyles.fontSize48Medium,
                  ),
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}