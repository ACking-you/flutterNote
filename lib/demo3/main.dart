import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: MyApp(),
      ),
    ),
  ));
}

class MyApp extends StatelessWidget {
  final _list = <Widget>[];
  final _colorList = [
    Colors.red,
    Colors.yellow,
    Colors.blue,
    Colors.green,
    Colors.teal,
    Colors.orange,
    Colors.purple
  ];
  Container createItem(int i) {
    return Container(
      color: _colorList[i-1],
      child: TextButton(
        onPressed: () {
          final player = AudioPlayer();
          player.play(AssetSource("note$i.wav"));
        },
        child: SizedBox(

        ),
      ),
    );
  }

  initData() {
    for (int i = 1; i <= 7; i++) {
      _list.add(Expanded( child: createItem(i)));
    }
  }
  MyApp({Key? key}) : super(key: key){
     initData();
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children:_list,
      ),
    );
  }
}