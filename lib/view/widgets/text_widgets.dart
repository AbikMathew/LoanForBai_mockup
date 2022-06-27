import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import '../../constants/color_constants.dart';

class Heading extends StatelessWidget {
  const Heading(
      {Key? key,
      required this.text,
      this.fontSize = 40,
      this.textAlignment = TextAlign.start})
      : super(key: key);
  final String text;
  final double fontSize;
  final TextAlign textAlignment;
  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign: textAlignment,
      style: TextStyle(
          fontSize: fontSize.sp,
          color: kBlackBase,
          fontFamily: 'ArabicFont',
          fontWeight: FontWeight.bold),
    );
  }
}

class SubHeading extends StatelessWidget {
  const SubHeading(
      {Key? key, required this.text, this.fontSize = 18, this.leftPadding = 0})
      : super(key: key);
  final String text;
  final double fontSize;
  final double leftPadding;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: leftPadding),
      child: Text(
        text,
        style: TextStyle(
            fontSize: fontSize.sp,
            color: kBlackBase,
            fontFamily: 'ArabicFont',
            fontWeight: FontWeight.bold),
      ),
    );
  }
}

class LightHintText extends StatelessWidget {
  const LightHintText({Key? key, required this.text}) : super(key: key);
  final String text;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
          fontSize: 17.sp,
          color: Colors.grey,
          fontFamily: 'ArabicFont',
          fontWeight: FontWeight.bold),
    );
  }
}
