import 'dart:math';

class CalculatorBrain {
  CalculatorBrain({required this.height, required this.weight});

  final int height;
  final int weight;

  double get _BMI => weight / pow(height / 100, 2); // BMI is now a getter

  String calculateBMI() {
    return _BMI.toStringAsFixed(1);
  }

  String getResult() {
    if (_BMI > 25) {
      return 'OVERWEIGHT';
    } else if (_BMI > 18.5) {
      return 'NORMAL';
    } else {
      return 'UNDERWEIGHT';
    }
  }

  String getInterpretation() {
    if (_BMI >= 25) {
      return 'You have a higher than normal body weight. Try to exercise more.';
    } else if (_BMI >= 18.5) {
      return 'You have a normal body weight. Good job!';
    } else {
      return 'You have a lower than normal body weight. You can eat a bit more.';
    }
  }
}

class CalculatorBrain2 {
  CalculatorBrain2(
      {required this.height,
      required this.weight,
      required this.age,
      required this.activityLevel});

  final int height;
  final int weight;
  final int age;
  final double activityLevel;

  double get _BMR => (10 * weight) + (6.25 * height) - (5 * age) + 5;

  double get _TDEE => _BMR * activityLevel;

  String calculateTDEE() {
    return _TDEE.toStringAsFixed(1);
  }

  double getResult() {
    return _TDEE;
  }

  String getInterpretation() {
    if (_TDEE >= 2100 && _TDEE <= 2700) {
      return "You have a moderate energy requirement. To lose weight, reduce your intake by 500 kcal per day and stay active!";
    } else if (_TDEE >= 2700) {
      return "You have high energy needs. Increase your intake by 500 kcal/day with protein-rich foods and strength training.";
    } else {
      return "Your calorie needs are on the lower side. Stick to 1600 kcal/day to maintain your weight while keeping a balanced diet.";
    }
  }
}
