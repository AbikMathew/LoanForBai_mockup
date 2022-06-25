import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton(
      {Key? key, required this.onTap, this.width = 100, required this.text})
      : super(key: key);

  final VoidCallback onTap;
  final double width;
  final String text;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
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
    );
  }
}