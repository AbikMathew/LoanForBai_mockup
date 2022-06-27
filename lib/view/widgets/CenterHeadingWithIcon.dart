import 'package:flutter/material.dart';
import 'package:loans_for_bai/view/widgets/image_widget.dart';
import 'package:loans_for_bai/view/widgets/text_widgets.dart';
import 'package:sizer/sizer.dart';

import '../../constants/color_constants.dart';
import '../../constants/ui_constants.dart';

class CenterHeadingWithIcon extends StatelessWidget {
  const CenterHeadingWithIcon({
    Key? key,
    required this.heading,
    required this.icon,
    required this.showTick,
    this.textAlignment = TextAlign.start,
  }) : super(key: key);
  final String heading;
  final IconData icon;
  final TextAlign textAlignment;
  final bool showTick;

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
            textAlignment: textAlignment,
            text: heading,
            fontSize: 25,
          ),
          kHeight7,
          Stack(
            children: [
              Center(
                child: Icon(
                  icon,
                  size: 150,
                  color: kPurple,
                ),
              ),
              Visibility(
                visible: showTick,
                child: Positioned(
                    right: 15.w,
                    top: -3.h,
                    child: const Icon(
                      Icons.check,
                      size: 150,
                      color: kGreyBase,
                    )),
              )
            ],
          ),
        ],
      ),
    );
  }
}
