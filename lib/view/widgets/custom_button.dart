import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton(
      {Key? key,
      required this.onTap,
      this.width = 100,
      required this.text,
      this.l = 0,
      this.b = 0,
      this.r = 0,
      this.t = 0})
      : super(key: key);

  final VoidCallback onTap;
  final double width;
  final String text;
  final double l, t, b, r;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Padding(
        padding: EdgeInsets.fromLTRB(l, t, r, b),
        child: Container(
          decoration: const BoxDecoration(
            color: Color(0xFF6558F5),
            borderRadius: BorderRadius.all(Radius.circular(5)),
          ),
          height: 45,
          width: width,
          child: Center(
            child: Text(
              text,
              style: const TextStyle(fontSize: 20, color: Colors.white),
            ),
          ),
        ),
      ),
    );
  }
}
