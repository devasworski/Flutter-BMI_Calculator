import 'dart:math';
import 'package:flutter/material.dart';

class Calculator {
  int height;
  int weight;
  double _bmi;

  Calculator({@required this.weight, @required this.height}) {
    _caluclateBMI();
  }

  void _caluclateBMI() {
    _bmi = weight / pow((height / 100), 2);
  }

  String getBmiValue() {
    return _bmi.toStringAsFixed(1);
  }

  String getResult() {
    if (_bmi > 25)
      return "OVERWEIGHT";
    else if (_bmi > 18.5)
      return "NORMAL";
    else
      return "UNDERWEIGHT";
  }

  String getResultText() {
    if (_bmi > 25)
      return "You have higher then normal body weight. Try to exercise more!";
    else if (_bmi > 18.5)
      return "You have a normal body weight. Good Job!";
    else
      return "You have a lower then normal body weight.";
  }
}
