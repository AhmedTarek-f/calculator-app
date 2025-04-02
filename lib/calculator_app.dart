import 'package:calculator_app/core/constants/app_colors.dart';
import 'package:calculator_app/features/calculator_home/presentation/views/calculator_home_view.dart';
import 'package:flutter/material.dart';

class CalculatorApp extends StatelessWidget {
  const CalculatorApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Calculator',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: AppColors.black,
        colorScheme: ColorScheme.fromSeed(seedColor: AppColors.darkBlue),
        useMaterial3: true,
      ),
      home: const CalculatorHomeView(),
    );
  }
}