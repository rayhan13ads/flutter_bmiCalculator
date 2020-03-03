import 'dart:math';

class CalculateBrain{
  final int height;
  final int weigth;
  double _bmi;
  CalculateBrain({this.weigth, this.height});

  String calculateBMI(){
    _bmi = weigth / pow(height/100,2);
    return _bmi.toStringAsFixed(1);
  }

  String getResult(){
    if(_bmi >= 25){
      return 'Overweight';
    }else if(_bmi > 18.5){
      return 'Normal';
    }else{
      return 'Underweight';
    }
  }

  String getInterpretation(){
    if(_bmi >= 25){
      return 'You have a higher than normal body weight. Try to exercise mode.';
    }else if(_bmi > 18.5){
      return 'You have a normal body weight. Good job!';
    }else{
      return 'You have a lower than nomal body weight. You can eat a it more.';
    }
  }
}