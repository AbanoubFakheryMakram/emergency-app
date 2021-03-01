import '../colors.dart';
import 'package:flutter/material.dart';

Widget myButton2(
  Widget child, {
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
        child: child,
      ),
    ),
  );
}
