import 'package:calculator_app/features/calculator_home/presentation/views/widgets/calculator_home_view_body.dart';
import 'package:flutter/material.dart';

class CalculatorHomeView extends StatelessWidget {
  const CalculatorHomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(child: CalculatorHomeViewBody()),
    );
  }
}