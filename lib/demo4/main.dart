import 'package:flutter/material.dart';
import 'package:learn_flutter1/demo4/Questin.dart';
import 'package:rflutter_alert/rflutter_alert.dart';

//本次学习学到了：
// 1.一定要注意前后端分离的思想去写代码。具体来讲就是，
// 不要在写界面的代码里面存储任何状态和数据，前端只需要调用接口更新数据即可！否则会很乱
//  我这里有个很妙的设计，参考Java的迭代器设计，hasNext，next，get...
// 2.用第三方库作为补充的插件

void main() => runApp(const Quizzler());

class Quizzler extends StatelessWidget {
  const Quizzler({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Scaffold(
          backgroundColor: Colors.black,
          body: SafeArea(
            child: Padding(
              padding: EdgeInsets.all(10.0),
              child: QuizzlerPage(),
            ),
          )),
    );
  }
}

showAlert(
    {required BuildContext context,
    required String title,
    required String desc,
    required String buttonText,
    required AlertType alertType}) {
  Alert(
    context: context,
    type: alertType,
    title: title,
    desc: desc,
    buttons: [
      DialogButton(
        child: Text(
          buttonText,
          style: const TextStyle(color: Colors.white, fontSize: 20),
        ),
        onPressed: () => Navigator.pop(context),
        width: 120,
      )
    ],
  ).show();
}

class QuizzlerPage extends StatefulWidget {
  const QuizzlerPage({Key? key}) : super(key: key);

  @override
  _QuizzlerPageState createState() => _QuizzlerPageState();
}

class _QuizzlerPageState extends State<QuizzlerPage> {
  var icons = <Widget>[];

  void doUpdate(bool choose) {
    setState(() {
      if (!Question.hasNext()) {
        showAlert(
            context: context,
            title: "提示",
            desc: "题目已经做完是否重新开始？",
            buttonText: "确认",
            alertType: AlertType.info);
        Question.restart();
        icons.clear();
        return;
      }
      if (choose == Question.getQuestionAnswer()) {
        icons.add(const Icon(
          Icons.done,
          color: Colors.green,
        ));
        Question.next();
        return;
      }
      icons.add(const Icon(
        Icons.close,
        color: Colors.red,
      ));
      Question.next();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Expanded(
          flex: 5,
          child: Center(
            child: Text(
              Question.getQuestionText(),
              style: const TextStyle(fontSize: 25.0, color: Colors.white),
            ),
          ),
        ),
        Expanded(
            child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
          child: TextButton(
            onPressed: () {
              doUpdate(true);
            },
            child: const Text(
              "True",
              style: TextStyle(color: Colors.white, fontSize: 25.0),
            ),
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all(Colors.green),
            ),
          ),
        )),
        Expanded(
            child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
          child: TextButton(
            onPressed: () {
              doUpdate(false);
            },
            child: const Text(
              "False",
              style: TextStyle(color: Colors.white, fontSize: 25.0),
            ),
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all(Colors.red),
            ),
          ),
        )),
        Row(
          children: icons,
        )
      ],
    );
  }
}
