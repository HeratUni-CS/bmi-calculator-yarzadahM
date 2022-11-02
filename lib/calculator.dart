import 'dart:math';
import 'package:flutter/material.dart';

class Calculator {
   int height;
   int weight;
  double bmi = 0;
  Calculator({required this.weight, required this.height}){
    bmi = weight / pow(height/ 100, 2);

  }


  String calculateBMI() {
    return bmi.toStringAsFixed(2);
  }

  String getInterpretation() {
    if (bmi >= 25) {
      return 'You are highly fat. Try to exercise more';
    } else if (bmi >= 18.5) {
      return 'You have a normal  weight. Good job!';
    } else {
      return ' You have a lower than normal  weight. You have to eat protein food.';
    }
  }

  String getResult() {
    if (bmi >= 25) {
      return 'Overweight';
    } else if (bmi >= 18.5) {
      return ' Normal';
    } else {
      return 'Underweight';
    }
  }
}
