import 'package:calculator_app/features/calculator_home/presentation/views_model/calculator_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CalculatorCubit extends Cubit<CalculatorState> {
  CalculatorCubit() : super(const CalculatorInitial("0"));
  String? beforeOperationValue;
  String? currentOperator;
  String? previousOperator;

  void changeCalculatorValue({required String value}){
    if(value == "Ac"){
      acButton();
    }
    else if(value.contains("delete_icon.svg")){
      deleteButton();
    }
    else if(value.contains("division_icon.svg")){
      divisionButton();
    }
    else if(value.contains("multiplication_icon.svg")){
      multiplicationButton();
    }
    else if(value == "-"){
      minusButton();
    }
    else if(value == "+"){
      plusButton();
    }
    else if(value == "="){
      equalButton();
    }
    else{
      addingValues(value: value);
    }
  }

  void acButton(){
    beforeOperationValue = null;
    currentOperator = null;
    emit(const ChangeValueState("0"));
  }

  void addingValues({required String value}){
    final String currentValue = state.calculationValue == "0"? "" : state.calculationValue;
    if(value == "." && currentValue.contains(".")){

    }
    else{
      final String newValue = currentValue+value;
      emit(ChangeValueState(newValue));
    }
  }

  void deleteButton(){
    if(state.calculationValue.isNotEmpty && state.calculationValue != "0"){
      final String newValue = state.calculationValue.substring(0,state.calculationValue.length-1);
      if(newValue.isEmpty){
        emit(const ChangeValueState("0"));
      }
      else{
        emit(ChangeValueState(newValue));
      }
    }
    else{
      emit(const ChangeValueState("0"));
    }
  }

  void divisionButton(){
    currentOperator = "/";
    if(beforeOperationValue != null){
      emit(DivisionState(state.calculationValue));
      calculateByOperator(operator: previousOperator ?? currentOperator!,value: beforeOperationValue!);
    }
    else{
      beforeOperationValue = state.calculationValue;
      emit(const DivisionState("1"));
      calculateByOperator(operator: previousOperator ?? currentOperator!,value: beforeOperationValue!);
    }
    previousOperator = "/";
  }

  void multiplicationButton(){
    currentOperator = "*";
    if(beforeOperationValue != null){
      emit(MultiplicationState(state.calculationValue));
      calculateByOperator(operator: previousOperator ?? currentOperator!,value: beforeOperationValue!);
    }
    else{
      beforeOperationValue = state.calculationValue;
      emit(const MultiplicationState("1"));
      calculateByOperator(operator: previousOperator ?? currentOperator!,value: beforeOperationValue!);
    }
    previousOperator = "*";
  }

  void minusButton(){
    currentOperator = "-";
    if(beforeOperationValue != null){
      emit(MinusState(state.calculationValue));
      calculateByOperator(operator: previousOperator ?? currentOperator!,value: beforeOperationValue!);
    }
    else{
      beforeOperationValue = state.calculationValue;
      emit(const MinusState("0"));
      calculateByOperator(operator: previousOperator ?? currentOperator!,value: beforeOperationValue!);
    }
    previousOperator = "-";
  }

  void plusButton(){
    currentOperator = "+";
    if(beforeOperationValue != null){
      emit(PlusState(state.calculationValue));
      calculateByOperator(operator: previousOperator ?? currentOperator!,value: beforeOperationValue!);
    }
    else{
      beforeOperationValue = state.calculationValue;
      emit(const PlusState("0"));
      calculateByOperator(operator: previousOperator ?? currentOperator!,value: beforeOperationValue!);
    }
    previousOperator = "+";
  }

  void equalButton(){
    if(previousOperator != null && beforeOperationValue != null){
      calculateByOperator(operator: previousOperator!,value: beforeOperationValue!,changeState: false);
      final String newValue = beforeOperationValue!;
      beforeOperationValue = null;
      previousOperator = null;
      currentOperator = null;
      emit(ChangeValueState(newValue));
    }
  }

  void calculateByOperator({required String operator, required String value , bool changeState = true}){
      double currentValue = double.parse(value);
      String stateValue = state.calculationValue == "" ? "1" : state.calculationValue;
      if(operator == "/"){
        beforeOperationValue = (currentValue / double.parse(stateValue=="0"? "1":stateValue)).toString();
        if(changeState) emit(const DivisionState(""));
      }
      else if(operator == "*"){
        beforeOperationValue = (currentValue * double.parse(stateValue)).toString();
        if(changeState) emit(const MultiplicationState(""));
      }
      else if(operator == "-"){
        beforeOperationValue = (currentValue - double.parse(state.calculationValue == "" ? "0" : state.calculationValue)).toString();
        if(changeState) emit(const MinusState(""));
      }
      else if(operator == "+"){
        beforeOperationValue = (currentValue + double.parse(state.calculationValue == "" ? "0" : state.calculationValue)).toString();
        if(changeState) emit(const PlusState(""));
      }
  }

}