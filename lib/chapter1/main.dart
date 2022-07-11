import 'package:flutter/material.dart';

//learn Container
Container learnContainer1() {
  return Container(
    height: 200,
    width: 200,
    color: Colors.grey,
    alignment: Alignment.topLeft,
    child: Container(
      width: 200,
      height: 200,
      color: Colors.black,
      alignment: Alignment.bottomCenter,
      child: Container(
        width: 20,
        height: 40,
        color: Colors.red,
        alignment: Alignment.center,
        child: const FlutterLogo(
          size: 100,
        ),
      ),
    ),
  );
}

Container learnContainer2() {
  return Container(
      alignment: Alignment.center,
      color: Colors.grey,
      child: Container(
        height: 120,
        width: 120,
        color: Colors.red,
        margin: const EdgeInsets.only(
          left: 20,
          top: 20,
        ),
        padding: const EdgeInsets.all(10),
        child: const FlutterLogo(),
      ));
}

Container learnContainer3() {
  return Container(
    //背景修饰
    decoration: const BoxDecoration(
      //从左到右，由黑色渐变为灰色
      gradient: LinearGradient(
        colors: [Colors.black, Colors.green],
      ),
      boxShadow: [BoxShadow(blurRadius: 10)],
    ),
    alignment: Alignment.center,
    child: Container(
      color: Colors.white,
      width: 50,
      height: 50,
    ),
    //前景修饰
    foregroundDecoration: BoxDecoration(
      //半透明的灰色
      color: Colors.green.withOpacity(0.5),
      shape: BoxShape.circle,
    ),
  );
}

// learn布局（Row和Column
Column learnColumn1() {
  return Column(
    children: [
      Container(
        width: 100,
        height: 30,
        color: Colors.grey,
      ),
      const FlutterLogo(
        size: 100,
      ),
      Container(
        width: 100,
        height: 30,
        color: Colors.red,
      ),
      Container(
        width: 100,
        height: 30,
        color: Colors.blue,
      ),
    ],
  );
}

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      backgroundColor: Colors.blueGrey,
      appBar: AppBar(
        title: Text("test"),
        backgroundColor: Colors.blueGrey[700],
      ),
      body: const Center(
          child: Image(
        image: AssetImage('images/lanqiao.jpg'),
      )),
    ),
  ));
}
