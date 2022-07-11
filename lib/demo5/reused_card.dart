

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ReusedCard extends StatelessWidget {

  const ReusedCard({required this.color,this.cardChild});

  final Color color;
  final Widget? cardChild;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(10.0),
      ),
      margin: const EdgeInsets.all(10.0),
      child: cardChild,
    );
  }
}