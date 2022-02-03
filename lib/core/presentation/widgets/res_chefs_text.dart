import 'package:flutter/material.dart';

class ResChefsText extends StatelessWidget {
  const ResChefsText(
    this.text, {
    Key? key,
    this.fontWeight = FontWeight.normal,
    this.fontSize = 12,
    this.overflow = TextOverflow.ellipsis,
    this.color = Colors.white,
  }) : super(key: key);

  final String text;
  final FontWeight fontWeight;
  final double fontSize;
  final TextOverflow overflow;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      overflow: overflow,
      style: TextStyle(
        color: color,
        fontSize: fontSize,
        fontWeight: fontWeight,
      ),
      textScaleFactor: 1.0,
      maxLines: 10,
    );
  }
}
