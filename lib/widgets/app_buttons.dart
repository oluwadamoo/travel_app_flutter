import 'package:flutter/material.dart';
import 'package:travel_app/widgets/app_text.dart';

class AppButtons extends StatelessWidget {
  final Color color;
  final Color backgroundColor;
  double size;
  final Color borderColor;
  String? text;
  IconData? icon;
  bool? isIcon;
  AppButtons(
      {Key? key,
      required this.color,
      required this.size,
      required this.backgroundColor,
      required this.borderColor,
      this.isIcon = false,
      this.text = "1",
      this.icon})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: size,
      height: size,
      decoration: BoxDecoration(
          border: Border.all(color: borderColor, width: 1.0),
          borderRadius: BorderRadius.circular(15),
          color: backgroundColor),
      child: isIcon == false
          ? Center(child: AppText(text: text!, color: color))
          : Icon(icon, color: color),
    );
  }
}
