import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

BorderRadius borderRadius10 = BorderRadius.circular(10);
BorderRadius borderRadius20 = BorderRadius.circular(20);
BorderRadius borderRadius17 = BorderRadius.circular(17);
BorderRadius borderRadius100 = BorderRadius.circular(100);
BorderRadius borderRadius8 = BorderRadius.circular(8);
BorderRadius borderRadius2 = BorderRadius.circular(2);
BorderRadius borderRadius14 = BorderRadius.circular(14);

double getWidth(double width) {
  return width * 0.25.w;
}

double getViewPortFraction(){
  double value = 1;
  if (100.w < 430) {
    value = 0.45;
  } else if (100.w < 420) {
    value = 0.48;
  }else if (100.w < 410) {
    value = 0.50;
  }else if (100.w < 400) {
    value = 0.53;
  }else if (100.w < 390) {
    value = 0.55;
  }else if (100.w < 380) {
    value = 0.58;
  }
  debugPrint(value.toString());
  return value;
}