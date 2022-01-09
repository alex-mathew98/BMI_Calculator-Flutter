import 'dart:math';

class Calculator{

  Calculator({this.height,this.weight});
  final int height;
  final int weight;
  double _BMI;

  String calculateBMI(){
    _BMI = weight/ pow(height/100, 2);
    return _BMI.toStringAsFixed(2);
  }

  String result(){
    if(_BMI >=25){
      return "Overweight";
    }
    else if (_BMI >18.5){
      return 'Normal';
    }
    else{
      return 'Underweight';
    }
  }

  String description(){
    if(_BMI >=25){
      return "Your BMI levels indicate that you are currently overweight.";
    }
    else if (_BMI >18.5){
      return "Your BMI levels indicate that you have a normal weight.Keep it up .";
    }
    else{
      return 'Your BMI levels indicate that you are currently having aa lower than normal weight.You could eat a bit more';
    }
  }
}