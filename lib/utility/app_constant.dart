import 'package:flutter/material.dart';

class AppConstant {
  static Color bgColor = Color.fromARGB(255, 187, 187, 187);
  static Color dark = Colors.black;
  static Color active = Color.fromARGB(255, 241, 91, 27);
  static Color active1 = Color.fromARGB(255, 3, 125, 30);
  static Color fieldColor = Colors.white;

  TextStyle appStyle({
    double? size,
    Color? color,
    FontWeight? fontWeight,
    TextDecoration? textDecoration,
  }) {
    return TextStyle(
      fontSize: size ?? 18,
      color: color ?? dark,
      fontWeight: fontWeight,
      fontFamily: 'FredokaOne',
      decoration: textDecoration,
    );
  }

  BoxDecoration borderCurveBox() => BoxDecoration(
      border: Border.all(), borderRadius: BorderRadius.circular(30));
  //BorderRadius.circular(30) เส้นโค้งของขอบ

  BoxDecoration curveBox() => BoxDecoration(
        //ทำกรอป
        color: Colors.white,
        borderRadius: BorderRadius.circular(30),
        border: Border.all(),
      );

  TextStyle h1Style() {
    return AppConstant().appStyle(
      size: 18,
      fontWeight: FontWeight.bold,
    );
  }

  TextStyle h2Style({TextDecoration? textDecoration, Color? color}) {
    return AppConstant().appStyle(
      size: 20,
      textDecoration: textDecoration,
      color: color,
    );
  }

  TextStyle h3Style({Color? color, double? size, FontWeight? fontWeight}) {
    return AppConstant().appStyle(
      size: size ?? 16,
      fontWeight: fontWeight,
      color: color,
    );
  }

  TextStyle h6Style({Color? color, double? size, FontWeight? fontWeight}) {
    return AppConstant()
        .appStyle(size: size ?? 12, fontWeight: fontWeight, color: color);
  }

  TextStyle h4Style({Color? color, double? size, FontWeight? fontWeight}) {
    return AppConstant()
        .appStyle(size: size ?? 50, fontWeight: fontWeight, color: color);
  }

  TextStyle h5Style({Color? color, double? size, FontWeight? fontWeight}) {
    return AppConstant()
        .appStyle(size: size ?? 40, fontWeight: fontWeight, color: color);
  }
}
