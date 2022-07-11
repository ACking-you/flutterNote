import 'package:flutter/material.dart';
import 'package:learn_flutter1/demo5/reused_card.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'card_child.dart';

const bottomContainerColor = Color(0xff0a0d22);
const activeCardColor = Color(0xff111428);

class InputPage extends StatefulWidget {
  const InputPage({Key? key}) : super(key: key);

  @override
  _InputPageState createState() => _InputPageState();
}


class _InputPageState extends State<InputPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: bottomContainerColor,
          title: Center(child: const Text('BMI 计算器',style:
            TextStyle(
              fontSize: 30.0,
            ),)),
        ),
        body: Column(
          children: [
            Expanded(
              child: Row(
                children: const [
                  Expanded(
                    child: ReusedCard(
                      color: activeCardColor,
                      cardChild: IconContent(
                        icon: FontAwesomeIcons.mars,
                        text: '男',
                      ),
                    ),
                  ),
                  Expanded(
                    child: ReusedCard(color: activeCardColor,
                    cardChild: IconContent(
                      icon: FontAwesomeIcons.venus,
                      text: '女',
                    ),
                    ),
                  ),
                ],
              ),
            ),
            const Expanded(
              child: ReusedCard(
                color: activeCardColor,
              ),
            ),
            Expanded(
                child: Row(
              children: const [
                Expanded(
                  child: ReusedCard(
                    color: activeCardColor,
                  ),
                ),
                Expanded(
                  child: ReusedCard(
                    color: activeCardColor,
                  ),
                ),
              ],
            )),
          ],
        ));
  }
}
