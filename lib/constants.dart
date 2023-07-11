import 'package:flutter/material.dart';

const kHeaderStyle =
    TextStyle(color: secondaryColor, fontSize: 50, fontWeight: FontWeight.w700);
const kSubHeaderStyle =
    TextStyle(color: secondaryColor, fontSize: 20, fontWeight: FontWeight.w300);
const kBottomContainerStyle = BoxDecoration(
    color: secondaryColor,
    borderRadius: BorderRadius.only(
        topLeft: Radius.circular(20), topRight: Radius.circular(20)));
const primaryColor = Color(0xFFFFD9C0);
const secondaryColor = Colors.white;
const kTaskHeaderStyle =
    TextStyle(color: primaryColor, fontSize: 40, fontWeight: FontWeight.w500);

Color getPrimaryColor(Set<MaterialState> states) {
  return primaryColor;
}

Color getSecondaryColor(Set<MaterialState> states) {
  return secondaryColor;
}

const kTextFieldStyle = InputDecoration(
  hintText: 'Type here',
  enabledBorder: UnderlineInputBorder(
    borderSide: BorderSide(color: primaryColor),
  ),
  focusedBorder: UnderlineInputBorder(
    borderSide: BorderSide(color: primaryColor),
  ),
);
