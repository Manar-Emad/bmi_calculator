import 'dart:math';

class CalculatorBrain {
  var height;
  var weight;
  var _mbi;
  CalculatorBrain({this.height, this.weight});
  String calculateMBI() {
    _mbi = weight / pow(height / 100, 2);
    return _mbi.toStringAsFixed(1);
  }

  Object getResult() {
    if (_mbi >= 25) {
      return  'Overweight';
    } else if (_mbi > 18.5) {
      return 'Normal';
    } else {
      return 'Underweight';
    }
  }

  String getInterpretation() {
    if (_mbi >= 25) {
      return 'overweight Interpretation';
    } else if (_mbi > 18.5) {
      return 'Normal Interpretation';
    } else {
      return 'Underweight Interpretation';
    }
  }
}
