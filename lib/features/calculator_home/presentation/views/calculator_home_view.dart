import 'package:calculator_app/features/calculator_home/presentation/views/widgets/calculator_home_view_body.dart';
import 'package:calculator_app/features/calculator_home/presentation/views_model/calculator_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CalculatorHomeView extends StatelessWidget {
  const CalculatorHomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: BlocProvider(
        create: (context) => CalculatorCubit(),
        child: const SafeArea(
            child: CalculatorHomeViewBody()
        ),
      ),
    );
  }
}