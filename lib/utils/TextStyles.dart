import 'package:flutter/material.dart';
import 'colors/app_colors.dart';

class TextStyles {
  static TextStyle get textFieldHintStyle => TextStyle(
      color: CustomColor.shadesOfBlack,
      fontSize: 14,
      fontFamily: "Montserrat");
  static TextStyle get textBold => TextStyle(
      color: CustomColor.black,
      fontSize: 14,
      fontFamily: "MontserratSemiBold");
  static TextStyle get textRegular => TextStyle(
      color: CustomColor.black,
      fontSize: 12,
      fontFamily: "Montserrat");
  static TextStyle get textSmallRegular => TextStyle(
      color: CustomColor.deepBlue,
      fontSize: 10,
      fontFamily: "Montserrat");
  static TextStyle get mediumText => TextStyle(
      color: CustomColor.primaryWhite,
      fontSize: 16,
      fontFamily: "MontserratMedium");
  static TextStyle get regularText => TextStyle(
      color: CustomColor.primaryWhite,
      fontSize: 16,
      fontFamily: "Montserrat");
  static TextStyle get semiBoldText => TextStyle(
      color: CustomColor.primaryWhite,
      fontSize: 16,
      fontFamily: "MontserratBold");
}
