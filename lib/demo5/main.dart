import 'package:flutter/material.dart';
import 'package:learn_flutter1/demo5/input_page.dart';

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
