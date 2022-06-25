import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import '../../constants/color_constants.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField(
      {Key? key,
      required this.onChanged,
      this.inputType = TextInputType.text,
      this.hintText = '',
      this.height = 50,
      this.width = 85})
      : super(key: key);

  final void Function(String)? onChanged;
  final TextInputType inputType;
  final double height;
  final double width;
  final String hintText;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
      width: width.w,
      child: TextField(
        style: const TextStyle(fontSize: 20),
        onChanged: onChanged,
        keyboardType: inputType,
        decoration: InputDecoration(
          hintText: hintText,
          hintStyle: TextStyle(color: kGreyBase),
          focusedBorder: const OutlineInputBorder(
            borderSide: BorderSide(color: kPurple, width: 2),
          ),
          enabledBorder: const OutlineInputBorder(
            borderSide: BorderSide(color: kGreyBase, width: 2),
          ),
        ),
      ),
    );
  }
}
