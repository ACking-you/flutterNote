import 'package:flutter/material.dart';
import '../constants.dart';

class BottomButton extends StatelessWidget {
  BottomButton({required this.onTap});
  VoidCallback onTap;
  String _text = "开始计算";
  set text(String text) => _text = text;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        alignment: Alignment.center,
        color: kBottomTextColor,
        child: Text(
          _text,
          textAlign: TextAlign.center,
          style: kButtonTextStyle,
        ),
      ),
    );
  }
}
