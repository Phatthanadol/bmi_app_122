import 'dart:math';

class Calculator {
  late double weight;
  late double height;
  double bmi = 0.0;

  Calculator(this.weight, this.height);

  String calculateBMI() {
    bmi = weight / pow((height / 100), 2);

    return bmi.toStringAsFixed(1);
  }

  String resultText() {
    if (bmi < 18.5) {
      return 'Underweight';
    } else if (bmi < 23) {
      return 'Normal Weight';
    } else if (bmi < 25) {
      return 'Overweight';
    } else if (bmi < 30) {
      return 'Class 1 Obesity (Some Risk)';
    } else if (bmi < 40) {
      return 'Class 2 Obesity (Moderate Risk)';
    } else {
      return 'Class 3 Obesity (Hight Risk)';
    }
  }
}
