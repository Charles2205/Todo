import 'package:flutter/material.dart';

class PaddingWithText extends StatelessWidget {
  final String? text;
  final double? fontSize;
  final Color? color;
  final FontWeight? fontWeight;
  final EdgeInsetsGeometry? padding;
  const PaddingWithText({
    Key? key,
    required this.text,
    required this.fontSize,
    required this.color,
    required this.fontWeight,
    required this.padding,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: padding!,
      child: Text(
        text.toString(),
        style:
            TextStyle(fontSize: fontSize, fontWeight: fontWeight, color: color),
      ),
    );
  }
}
