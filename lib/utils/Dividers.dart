import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import 'colors.dart';
import 'constant.dart';

class Dividers {
  static double value = 0.25;
  static void getSizes() {
    if (100.h < 500) {
      value = 0.14;
    } else if (100.h < 600) {
      value = 0.16;
    } else if (100.h < 700) {
      value = 0.18;
    } else if (100.h < 800) {
      value = 0.20;
    } else if (100.h < 900) {
      value = 0.22;
    } else if (100.h < 1000) {
      value = 0.24;
    }
  }

  static Container coloredDividers = Container(
    height: getWidth(2),
    decoration: BoxDecoration(
        gradient: LinearGradient(colors: [
          ColorStrings.dividerColor1,
          ColorStrings.dividerColor2,
          ColorStrings.dividerColor1,
        ])),
  );

  static Container chatDivider = Container(
      height: getWidth(2),
      decoration: const BoxDecoration(color: ColorStrings.color_374151));

  static Container whiteDivider = Container(
      height: getWidth(1), width: 60.w, color: ColorStrings.color_656366);

  static SizedBox horizontalMargin(double horizontalMargin) {
    getSizes();
    return SizedBox(width: horizontalMargin * value.w);
  }

  static SizedBox verticalMargin(double verticalMargin) {
    getSizes();
    return SizedBox(height: verticalMargin * value.w);
  }
}
