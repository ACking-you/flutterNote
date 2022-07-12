import 'package:flutter/material.dart';
import 'package:learn_flutter1/demo5/components/bottom_icon.dart';
import 'package:learn_flutter1/demo5/components/reused_card.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:learn_flutter1/demo5/pages/result_page.dart';
import '../components/top_icon.dart';
import '../constants.dart';
import '../components/bottom_button.dart';

class InputPage extends StatefulWidget {
  const InputPage({Key? key}) : super(key: key);

  @override
  _InputPageState createState() => _InputPageState();
}

enum Gender {
  Male,
  FeMale,
}

class _InputPageState extends State<InputPage> {
  Gender? selectedGender;
  int height = kMinHeight;
  int weight = 50;
  int age = 18;
  @override
  Widget build(BuildContext context) {
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
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
              flex: 4,
              child: Row(
                children: [
                  Expanded(
                    child: ReusedCard(
                      color: selectedGender != null &&
                              selectedGender == Gender.Male
                          ? kActiveCardColor
                          : kInactiveCardColor,
                      cardChild: IconContent(
                        icon: FontAwesomeIcons.mars,
                        text: '男',
                      ),
                      onTap: () {
                        setState(() {
                          selectedGender = Gender.Male;
                        });
                      },
                    ),
                  ),
                  Expanded(
                    child: ReusedCard(
                        color: selectedGender != null &&
                                selectedGender == Gender.FeMale
                            ? kActiveCardColor
                            : kInactiveCardColor,
                        cardChild: IconContent(
                          icon: FontAwesomeIcons.venus,
                          text: '女',
                        ),
                        onTap: () {
                          setState(() {
                            selectedGender = Gender.FeMale;
                          });
                        }),
                  ),
                ],
              ),
            ),
            Expanded(
              flex: 5,
              child: ReusedCard(
                cardChild: Column(children: [
                  Expanded(
                    child: Column(
                      children: [
                        SizedBox(
                          height: 10.0,
                        ),
                        Text(
                          "身高",
                          textAlign: TextAlign.center,
                          style: kIconTextStyle,
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.baseline,
                      textBaseline: TextBaseline.alphabetic,
                      children: [
                        Text(
                          height.toString(),
                          style: kNumTextStyle,
                        ),
                        Text(
                          "cm",
                          style: kIconTextStyle,
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    flex: 3,
                    child: SliderTheme(
                      data: SliderTheme.of(context).copyWith(
                          activeTrackColor: Colors.white,
                          thumbColor: Color(0xffd8004c),
                          overlayColor: Color.fromARGB(39, 194, 16, 79)),
                      child: Slider(
                        value: height.toDouble(),
                        onChanged: (double newValue) {
                          setState(() {
                            height = newValue.round();
                          });
                        },
                        min: kMinHeight.toDouble(),
                        max: kMaxHeight.toDouble(),
                        // activeColor: Colors.white,
                        inactiveColor: kSliderInactiveColor,
                      ),
                    ),
                  )
                ]),
                color: kActiveCardColor,
              ),
            ),
            Expanded(
                flex: 4,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Expanded(
                      child: ReusedCard(
                        color: kActiveCardColor,
                        cardChild: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(top: 10.0),
                              child: Text(
                                "体重",
                                textAlign: TextAlign.center,
                                style: kIconTextStyle,
                              ),
                            ),
                            Text(
                              "$weight",
                              textAlign: TextAlign.center,
                              style: kNumTextStyle,
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 8.0),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  RoundIconButton(
                                    icon: FontAwesomeIcons.minus,
                                    onPressed: () {
                                      setState(() {
                                        weight--;
                                      });
                                    },
                                  ),
                                  SizedBox(
                                    width: 10.0,
                                  ),
                                  RoundIconButton(
                                    icon: FontAwesomeIcons.plus,
                                    onPressed: () {
                                      setState(() {
                                        weight++;
                                      });
                                    },
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                    Expanded(
                      child: ReusedCard(
                        color: kActiveCardColor,
                        cardChild: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(top: 10.0),
                              child: Text(
                                "年龄",
                                textAlign: TextAlign.center,
                                style: kIconTextStyle,
                              ),
                            ),
                            Text(
                              "$age",
                              textAlign: TextAlign.center,
                              style: kNumTextStyle,
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 8.0),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  RoundIconButton(
                                    icon: FontAwesomeIcons.minus,
                                    onPressed: () {
                                      setState(() {
                                        age--;
                                      });
                                    },
                                  ),
                                  SizedBox(
                                    width: 10.0,
                                  ),
                                  RoundIconButton(
                                    icon: FontAwesomeIcons.plus,
                                    onPressed: () {
                                      setState(() {
                                        age++;
                                      });
                                    },
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ],
                )),
            SizedBox(
              height: 68.0,
              child: BottomButton(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: ((context) => ResultPage(
                              height: height,
                              weight: weight,
                            )),
                      ));
                },
              ),
            )
          ],
        ));
  }
}
