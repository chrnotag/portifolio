import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Color get LightGreenColor {
  return Color(0xffA5E6AA);
}

Color get DarkGreenColor {
  return Color(0xff5C805E);
}

Color get BlueColor {
  return Color(0xffA9E1FB);
}

Color get DarkBlueColor {
  return Color(0xff37C3F4);
}

Color get RedColor {
  return Color(0xffEF8E8F);
}

Color get DarkRedColor {
  return Color(0xff7C2E39);
}

Color get CreamColor {
  return Color(0xffFBC383);
}

Color get DarkCreamColor {
  return Color(0xffC4640E);
}

Color get GreenWhatsAppp {
  return Color(0xff49C95A);
}

Color get OrangeFirebase {
  return Color(0xffFFCB2B);
}

Color get DarkOrangeFirebase {
  return Color(0xffF5820D);
}

List<Color> get ColorsApp {
  return List.of([
    LightGreenColor,
    BlueColor,
    DarkBlueColor,
    RedColor,
    CreamColor,
    DarkGreenColor,
    DarkCreamColor,
    DarkRedColor
  ]);
}

LinearGradient BlackToTransparent = LinearGradient(
  begin: Alignment.bottomCenter,
    end: Alignment.topCenter,
    colors: [Colors.black, Colors.transparent]);
