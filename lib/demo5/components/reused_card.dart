import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ReusedCard extends StatelessWidget {
  const ReusedCard({required this.color, this.cardChild,this.onTap});

  final Color color;
  final Widget? cardChild;
  final VoidCallback? onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(10.0),
        ),
        margin: const EdgeInsets.all(10.0),
        child: cardChild,
      ),
    );
  }
}
