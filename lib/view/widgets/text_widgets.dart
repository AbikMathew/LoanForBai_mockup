import 'package:flutter/material.dart';

import '../../constants/color_constants.dart';

class Heading extends StatelessWidget {
  const Heading({Key? key, required this.text}) : super(key: key);
  final String text;
  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: const TextStyle(fontSize: 40),
    );
  }
}

class SubHeading extends StatelessWidget {
  const SubHeading({Key? key, required this.text, this.fontSize = 20})
      : super(key: key);
  final String text;
  final double fontSize;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(fontSize: fontSize, color: kBlackBase),
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
      style: const TextStyle(fontSize: 17, color: Colors.grey),
    );
  }
}
