import 'package:flutter/material.dart';

// Default Button
Widget defaultButton({
  Color buttonColor = const Color(0XFFE44544),
  Color textColor = Colors.white,
  String fontFamily = 'PoppinsRegular',
  double fontSize = 20,
  required String buttonText,
  required void Function()? onTapFunction,
  double width = 303,
  double height = 63,
  double radius = 32,
}) =>
    Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
        color: buttonColor,
        borderRadius: BorderRadius.all(
          Radius.circular(
            radius,
          ),
        ),
      ),
      child: MaterialButton(
        onPressed: onTapFunction,
        child: textPoppinsRegular(
          text: buttonText,
          fontSize: fontSize,
          textColor: textColor,
        ),
      ),
    );


// Text Poppins Regular Font
Widget textPoppinsRegular({
  required String text,
  double fontSize = 35,
  Color textColor = const Color(0XFF43494B),
  TextDecoration decoration = TextDecoration.none,
  int? maxLines,
  TextOverflow? textOverflow,
}) =>
    Text(
      text,
      maxLines: maxLines,
      overflow: textOverflow,
      style: TextStyle(
        fontFamily: 'PoppinsRegular',
        fontSize: fontSize,
        color: textColor,
        decoration: decoration,
      ),
    );

// Text Poppins Bold Font
Widget textPoppinsBold({
  required String text,
  double fontSize = 20,
  Color textColor = Colors.white,
}) =>
    Text(
      text,
      style: TextStyle(
        fontFamily: 'PoppinsBold',
        fontSize: fontSize,
        color: textColor,
      ),
    );

// Text Poppins Medium Font
Widget textPoppinsMedium({
  required String text,
  double fontSize = 35,
  Color textColor = Colors.white,
}) =>
    Text(
      text,
      style: TextStyle(
        fontFamily: 'PoppinsMedium',
        fontSize: fontSize,
        color: textColor,
      ),
    );
