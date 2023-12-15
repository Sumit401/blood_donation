import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../utils/colors.dart';
import '../utils/constant.dart';
import '../utils/textStyles.dart';

class TextInputFields extends StatelessWidget {
  TextInputFields({
    Key? key,
    this.hintText,
    this.validator,
    this.maxLines,
    this.minLines,
    this.height,
    this.textDecoration,
    this.textAlign,
    this.initialValue,
    this.controller,
    this.textCapitalization,
    this.keyboardType,
    this.inputFormatters,
    this.showCursor,
    this.decoration,
    this.textFontColor,
    this.textFontSize,
    this.textFontWeight,
    this.hintFontColor,
    this.hintFontSize,
    this.hintFontWeight,
    this.horizontalSpacing,
    this.topSpacing,
    this.bottomSpacing,
    this.cursorHeight,
    this.enabled,
    this.obscureText,
    this.suffixIcon,
  }) : super(key: key);
  final String? hintText;
  final int? maxLines;
  final int? minLines;
  final String? Function(String?)? validator;
  final double? height;
  final TextDecoration? textDecoration;
  final TextAlign? textAlign;
  final String? initialValue;
  final TextEditingController? controller;
  final TextCapitalization? textCapitalization;
  final TextInputType? keyboardType;
  final List<TextInputFormatter>? inputFormatters;
  final bool? showCursor;
  final InputDecoration? decoration;
  final Color? textFontColor;
  final Color? hintFontColor;
  final double? textFontSize;
  final double? hintFontSize;
  final FontWeight? textFontWeight;
  final FontWeight? hintFontWeight;
  final double? horizontalSpacing;
  final double? topSpacing;
  final double? bottomSpacing;
  final double? cursorHeight;
  final bool? enabled;
  final bool? obscureText;
  final Widget? suffixIcon;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      enableSuggestions: false,
      autocorrect: false,
      keyboardType: keyboardType ?? TextInputType.visiblePassword,
      validator: validator,
      maxLines: maxLines,
      minLines: minLines,
      initialValue: initialValue,
      controller: controller,
      enabled: enabled ?? true,
      obscureText: obscureText ?? false,
      obscuringCharacter: "*",
      textAlign: textAlign ?? TextAlign.start,
      autovalidateMode: AutovalidateMode.onUserInteraction,
      inputFormatters: inputFormatters,
      showCursor: showCursor,
      cursorColor: ColorStrings.copperOrangeColor,
      textCapitalization: textCapitalization ?? TextCapitalization.sentences,
      onTapOutside: (event) {
        FocusManager.instance.primaryFocus?.unfocus();
      },
      style: TextStyleWithoutText(
        color: textFontColor ?? ColorStrings.whiteColor,
        fontWeight: textFontWeight ?? FontWeight.w600,
        size: textFontSize ?? 15,
        height: height,
      ),
      decoration: decoration ??
          TextFieldDecorations.textFormFieldWithSpacing(
              hintText.toString(),
              topSpacing,
              bottomSpacing,
              horizontalSpacing,
              hintFontColor,
              hintFontSize,
              hintFontWeight,
              suffixIcon),
    );
  }
}

class TextFieldDecorations {
  static InputDecoration textFormFieldWithSpacing(
      String textData,
      double? topSpacing,
      double? bottomSpacing,
      double? horizontalSpacing,
      Color? hintFontColor,
      double? hintFontSize,
      FontWeight? hintFontWeight,
      Widget? suffixIcon) {
    return InputDecoration(
        hintText: textData,
        hintStyle: TextStyleWithoutText(
            color: hintFontColor ?? Colors.black,
            fontWeight: hintFontWeight ?? FontWeight.w100,
            size: hintFontSize ?? 15),
        contentPadding: EdgeInsets.only(
          top: topSpacing ?? getWidth(11),
          bottom: bottomSpacing ?? getWidth(11),
          right: horizontalSpacing ?? getWidth(11),
          left: horizontalSpacing ?? getWidth(11),
        ),
        prefixIcon: suffixIcon,
        fillColor: ColorStrings.lightPinkColor,
        filled: true,
        disabledBorder: border,
        focusedBorder: border,
        errorBorder: border,
        focusedErrorBorder: border,
        hoverColor: ColorStrings.transparentColor,
        border: border,
        errorStyle: const TextStyle(height: 0),
        enabledBorder: border);


  }
  static var border = OutlineInputBorder(
      borderRadius: borderRadius10,
      borderSide: const BorderSide(color: ColorStrings.copperOrangeColor));
}
