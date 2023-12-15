import 'package:flutter/material.dart';
import 'package:grocery_project/utils/constant.dart';
import 'package:sizer/sizer.dart';

const fontFamily = "Poppins";

class TextStyleWithText extends StatelessWidget {
  TextStyleWithText({
    Key? key,
    required this.text,
    required this.color,
    required this.fontSize,
    required this.fontWeight,
    this.letterSpacing,
    this.maxLines,
    this.wordSpacing,
    this.overflow,
    this.height,
    this.textDecoration,
    this.textAlign,
    this.isFitted = true,
  }) : super(key: key);
  final String text;
  final Color color;
  final double fontSize;
  final int? maxLines;
  final double? wordSpacing;
  final FontWeight fontWeight;
  final TextOverflow? overflow;
  final double? height;
  final TextDecoration? textDecoration;
  final double? letterSpacing;
  final TextAlign? textAlign;
  final bool isFitted;

  @override
  Widget build(BuildContext context) {
    return isFitted
        ? FittedBox(
            alignment: Alignment.centerLeft,
            fit: BoxFit.scaleDown,
            child: Text(
              text,
              maxLines: maxLines ?? 1,
              textAlign: textAlign ?? TextAlign.left,
              style: TextStyle(
                  color: color,
                  fontFamily: fontFamily,
                  fontSize: getWidth(fontSize),
                  height: height,
                  overflow: overflow ?? TextOverflow.visible,
                  fontWeight: fontWeight,
                  decoration: textDecoration,
                  letterSpacing: letterSpacing ?? 0.6,
                  wordSpacing: wordSpacing),
            ),
          )
        : Text(
            text,
            maxLines: maxLines,
            textAlign: textAlign ?? TextAlign.left,
            style: TextStyle(
                color: color,
                fontFamily: fontFamily,
                fontSize: fontSize * 0.25.w,
                height: height ?? 1.5,
                overflow: overflow ?? TextOverflow.visible,
                fontWeight: fontWeight,
                letterSpacing: letterSpacing ?? 0.6,
                wordSpacing: wordSpacing),
          );
  }
}

class TextStyleWithoutText extends TextStyle {
  final Color color;
  final FontWeight fontWeight;
  final double size;
  final double? height;
  final double? letterSpacing;
  final double? wordSpacing;

  TextStyleWithoutText({
    required this.color,
    required this.fontWeight,
    required this.size,
    this.letterSpacing,
    this.height,
    this.wordSpacing,
  }) : super(
            color: color,
            letterSpacing: letterSpacing ?? 0.6,
            fontWeight: fontWeight,
            fontSize: size * 0.25.w,
            height: height ?? 1.5,
            fontFamily: fontFamily,
            wordSpacing: wordSpacing);
}
