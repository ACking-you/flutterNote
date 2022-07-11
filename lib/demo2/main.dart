import 'dart:math';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

//学习总结：1.学会使用有状态的Widget进行状态的重绘改变（需要setState方法通知重绘
//2.学会基本的按钮组件

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      backgroundColor: Colors.red,
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: Center(child: Text("Dicee")),
      ),
      body: Center(child: MyApp()),
    ),
  ));
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var leftDiceeNumber = 1;
  var rightDiceeNumber = 1;
  var rand = Random();
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: [
          Expanded(
              child: TextButton(
                onPressed: (){
                  setState(() {
                    leftDiceeNumber = 1+rand.nextInt(6);
                  });
                },
                  child: Image.asset("images/dice$leftDiceeNumber.png")
              )
          ),
          Expanded(child: TextButton(
            onPressed: (){
              setState(() {
                rightDiceeNumber = 1+rand.nextInt(6);
              });
            },
              child: Image.asset("images/dice$rightDiceeNumber.png"))),
        ],
      ),
    );
  }
}
