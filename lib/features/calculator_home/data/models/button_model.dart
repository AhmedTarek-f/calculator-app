import 'package:flutter/material.dart';

class ButtonModel{
  const ButtonModel({
    required this.buttonLabel,
     this.buttonBackgroundColor,
     this.width,
     this.height,
     this.buttonLabelStyle,
  });
  final Color? buttonBackgroundColor;
  final double? width;
  final double? height;
  final String buttonLabel;
  final TextStyle? buttonLabelStyle;
}