import 'dart:html';
import 'dart:math';

class CalCulateBMI {
  int _height;
  int _weight;
  double ret;
  CalCulateBMI._internal()
      : _height = 0,
        _weight = 0,
        ret = 0.0;
  static final _single = CalCulateBMI._internal();
  factory CalCulateBMI({required int height, required int weight}) {
    _single._height = height;
    _single._weight = weight;
    return _single;
  }
  String getBMIResult() {
    ret = _weight.toDouble() / (pow(_height.toDouble() / 100, 2));
    return ret.toStringAsFixed(1);
  }

  String getLevel() {
    if (ret > 23.9)
      return "偏高";
    else if (ret > 18.5)
      return "正常";
    else {
      return "偏低";
    }
  }

  String getAdvice() {
    if (ret > 23.9)
      return "您BMI偏高，建议少吃油炸食品，多运动噢";
    else if (ret > 18.5)
      return "您的BMI维持的非常正常，恭喜你！";
    else {
      return "您的BMI偏低，不能挑食噢，多吃点！";
    }
  }
}
