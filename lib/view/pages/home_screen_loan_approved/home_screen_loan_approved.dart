import 'package:flutter/material.dart';
import 'package:loans_for_bai/constants/color_constants.dart';
import 'package:loans_for_bai/constants/ui_constants.dart';
import 'package:loans_for_bai/view/widgets/image_widget.dart';
import 'package:loans_for_bai/view/widgets/text_widgets.dart';
import 'package:sizer/sizer.dart';
import '../../widgets/HomeScreenLoanContainer.dart';

class HomeScreenLoanApproved extends StatelessWidget {
  const HomeScreenLoanApproved({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const ImgWidget(),
            kHeight2,
            LoanDetailsColumn(),
            kHeight3,
            const HomeScreenLoanContainer()
          ],
        ),
      ),
    );
  }

  Container LoanDetailsColumn() {
    return Container(
      padding: const EdgeInsets.all(15),
      width: 92.w,
      height: 28.h,
      decoration: BoxDecoration(border: Border.all(color: kGreyBase, width: 2)),
      child: Row(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SubHeading(text: 'Loan Amount'),
              kHeight2,
              const SubHeading(text: 'Bayaaz Darr'),
              kHeight2,
              const SubHeading(text: 'Wapas ki rakam'),
              kHeight2,
              const SubHeading(text: 'Masik EMI'),
              kHeight2,
              const SubHeading(text: 'EMI ki Treekh')
            ],
          ),
          const Expanded(child: SizedBox()),
          Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              const SubHeading(text: '6,000'),
              kHeight2,
              const SubHeading(text: '12%'),
              kHeight2,
              const SubHeading(text: '6,090'),
              kHeight2,
              const SubHeading(text: '2,030'),
              kHeight2,
              const SubHeading(text: '10, Feb')
            ],
          ),
        ],
      ),
    );
  }
}
