import 'package:calculator_app/core/utils/screen_size.dart';
import 'package:calculator_app/features/calculator_home/presentation/views/widgets/division_column.dart';
import 'package:calculator_app/features/calculator_home/presentation/views/widgets/multiplication_column.dart';
import 'package:flutter/material.dart';

class DivisionAndMultiplicationColumn extends StatelessWidget {
  const DivisionAndMultiplicationColumn({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Row(
        children: [
          const DivisionColumn(),
          SizedBox(width: ScreenSize.getWidth(context)*0.053,),
          const MultiplicationColumn()
        ],
      ),
    );
  }
}