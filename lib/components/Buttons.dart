import 'package:flutter/material.dart';

import '../utils/colors.dart';
import '../utils/constant.dart';
import '../utils/textStyles.dart';

class FlatButton extends StatelessWidget {
  FlatButton(
      {Key? key,
      required this.text,
      required this.width,
      required this.height,
      required this.onTap,
      required this.fontSize,
      required this.borderRadius,
      this.borderDecoration = false,
      required this.fontWeight})
      : super(key: key);
  final String text;
  final double width;
  final double height;
  final double fontSize;
  bool borderDecoration;
  final BorderRadiusGeometry borderRadius;
  final FontWeight fontWeight;
  final VoidCallback onTap;
  final isPressed = ValueNotifier<bool>(false);

  void change() {
    if (isPressed.value) {
      isPressed.value = false;
      Future.delayed(const Duration(milliseconds: 400), () {
        isPressed.value = true;
      });
    } else {
      isPressed.value = true;
      Future.delayed(const Duration(milliseconds: 400), () {
        isPressed.value = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: getWidth(width),
      height: getWidth(height),
      child: GestureDetector(
        onTap: () => [onTap(), change()],
        onLongPress: () => change(),
        child: ValueListenableBuilder(
          valueListenable: isPressed,
          builder: (context, value, widget) => AnimatedContainer(
            duration: const Duration(milliseconds: 200),
            decoration: BoxDecoration(
                color: ColorStrings.lightPinkColor, borderRadius: borderRadius),
            child: Center(
              child: TextStyleWithText(
                text: text,
                color: ColorStrings.whiteColor,
                fontSize: fontSize,
                fontWeight: fontWeight,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
