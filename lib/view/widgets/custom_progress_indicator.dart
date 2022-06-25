import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import '../../constants/color_constants.dart';

class CustomProgressIndicator extends StatelessWidget {
  const CustomProgressIndicator({
    Key? key,
    required this.progress,
  }) : super(key: key);
  final double progress;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: SizedBox(
        width: 75.w,
        child: LinearProgressIndicator(
          minHeight: 10,
          backgroundColor: kGreyBase,
          value: progress,
          valueColor: const AlwaysStoppedAnimation<Color>(kPurple),
        ),
      ),
    );
  }
}
