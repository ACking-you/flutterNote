import 'package:flutter/material.dart';
import 'package:learn_flutter1/demo5/pages/input_page.dart';
//学到：1.对各种组件的使用更熟练了。
//2.切换了解到了通过Navigator和导航router进行页面的切换
//3.学会Slider组件的使用
//4.学会自定义floatButton
//5.学会components分包
//6.吧常量提出来
main()=>runApp(BMICalculator());


class BMICalculator extends StatelessWidget {
  const BMICalculator({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
        primaryColor: Color(0xff0a0d22),
        scaffoldBackgroundColor: Color(0xff0a0d22),
      ),
      home: InputPage(),
    );
  }
}
