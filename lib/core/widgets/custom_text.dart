import 'package:flutter/material.dart';

class CustomText extends StatelessWidget {
  final String data;
  final TextStyle? textStyle;
  final double? textScaler;

  const CustomText({
    super.key,
    required this.data,
    this.textStyle,
    this.textScaler,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      data,
      style: textStyle,
      textScaler: textScaler != null ? TextScaler.linear(textScaler!) : null,
    );
  }
}