import 'package:flutter/material.dart';
import 'package:loans_for_bai/view/widgets/image_widget.dart';
import 'package:loans_for_bai/view/widgets/text_widgets.dart';

import '../../constants/color_constants.dart';
import '../../constants/ui_constants.dart';

class CenterHeadingWithIcon extends StatelessWidget {
  const CenterHeadingWithIcon({
    Key? key,
    required this.heading,
    required this.icon,
  }) : super(key: key);
  final String heading;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const ImgWidget(),
          kHeight5,
          Heading(
            text: heading,
            fontSize: 25,
          ),
          kHeight7,
          Center(
            child: Icon(
              icon,
              size: 150,
              color: kPurple,
            ),
          ),
        ],
      ),
    );
  }
}
