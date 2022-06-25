import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import '../../constants/color_constants.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField(
      {Key? key,
      required this.onChanged,
      this.inputType = TextInputType.text,
      this.height = 50})
      : super(key: key);

  final void Function(String)? onChanged;
  final TextInputType inputType;
  final double height;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
      width: 85.w,
      child: TextField(
        style: const TextStyle(fontSize: 20),
        onChanged: onChanged,
        keyboardType: inputType,
        decoration: const InputDecoration(
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: kPurple, width: 2),
          ),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: kGreyBase, width: 2),
          ),
        ),
      ),
    );
  }
}
