import 'package:flutter/material.dart';
import 'package:loans_for_bai/view/widgets/custom_button.dart';
import 'package:loans_for_bai/view/widgets/text_widgets.dart';
import 'package:sizer/sizer.dart';

import '../../constants/color_constants.dart';
import '../../constants/ui_constants.dart';

class HomeScreenLoanContainer extends StatelessWidget {
  const HomeScreenLoanContainer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.all(15),
        width: 92.w,
        height: 20.h,
        decoration:
            BoxDecoration(border: Border.all(color: kGreyBase, width: 2)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SubHeading(
              text:
                  'Paayein 12,000 tak ka loan, 6 mahine\nke liye, sirf 12% ke bayaaz darr par!',
              fontSize: 17,
            ),
            kHeight4,
            CustomButton(
              onTap: () {},
              text: 'Loan Lein',
              width: 40.w,
            ),
            kHeight1
          ],
        ));
  }
}
