import 'package:flutter/material.dart';
import 'package:learn_flutter1/demo5/components/bottom_button.dart';
import '../constants.dart';
import '../CalculateBMI.dart';

class ResultPage extends StatelessWidget {
  int height;
  int weight;
  late BottomButton bottomButton;
  ResultPage({required this.height, required this.weight});

  @override
  Widget build(BuildContext context) {
    bottomButton = BottomButton(
      onTap: () {
        Navigator.pop(context);
      },
    );

    bottomButton.text = "重新计算";

    return Scaffold(
        appBar: AppBar(
          backgroundColor: kBottomContainerColor,
          title: Center(
              child: const Text(
            'BMI 计算器',
            style: TextStyle(
              fontSize: 30.0,
            ),
          )),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
                flex: 3,
                child: Center(
                  child: Text(
                    "测试结果",
                    style:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 40.0),
                  ),
                )),
            Expanded(
              flex: 12,
              child: Padding(
                padding: EdgeInsets.all(20.0),
                child: Container(
                  decoration: BoxDecoration(
                      color: kActiveCardColor,
                      borderRadius: BorderRadius.circular(10.0)),
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text(
                          CalCulateBMI(height: height, weight: weight)
                              .getLevel(),
                          style: kLevelTextStle,
                        ),
                        Text(
                          CalCulateBMI(height: height, weight: weight)
                              .getBMIResult(),
                          style: kResultTextStyle,
                        ),
                        Text(
                          CalCulateBMI(height: height, weight: weight)
                              .getAdvice(),
                          style: TextStyle(fontSize: 18.0),
                        )
                      ]),
                ),
              ),
            ),
            Expanded(
              flex: 2,
              child: bottomButton,
            )
          ],
        ));
  }
}
