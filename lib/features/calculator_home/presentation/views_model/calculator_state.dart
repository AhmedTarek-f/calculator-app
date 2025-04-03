import 'package:equatable/equatable.dart';

sealed class CalculatorState extends Equatable {
  final String calculationValue;
  const CalculatorState(this.calculationValue);
  @override
  List<Object> get props => [calculationValue];
}

final class CalculatorInitial extends CalculatorState {
  const CalculatorInitial(super.calculationValue);
}

class ChangeValueState extends CalculatorState{
  const ChangeValueState(super.calculationValue);
}

class DivisionState extends CalculatorState{
  const DivisionState(super.calculationValue);
}

class MultiplicationState extends CalculatorState{
  const MultiplicationState(super.calculationValue);
}

class MinusState extends CalculatorState{
  const MinusState(super.calculationValue);
}

class PlusState extends CalculatorState{
  const PlusState(super.calculationValue);
}
