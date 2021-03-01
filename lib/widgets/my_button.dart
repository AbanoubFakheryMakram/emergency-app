import 'package:flutter/material.dart';
import '../colors.dart';

Widget myButton(
  String title, {
  Function onTap,
  Color btnColor,
  BoxDecoration decoration,
  double width,
  TextStyle textStyle,
  double height,
  EdgeInsets margin,
}) {
  return Container(
    width: width ?? double.infinity,
    margin: margin,
    height: (height ?? 45),
    decoration: decoration ??
        BoxDecoration(
          color: btnColor ?? mainColor,
          borderRadius: BorderRadius.circular(5),
        ),
    child: FlatButton(
      padding: EdgeInsets.zero,
      onPressed: onTap,
      child: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: (12),
        ),
        child: Text(
          title,
          textAlign: TextAlign.center,
          style: textStyle ??
              TextStyle(
                color: Colors.white,
                fontSize: 14,
                fontWeight: FontWeight.bold,
              ),
        ),
      ),
    ),
  );
}
