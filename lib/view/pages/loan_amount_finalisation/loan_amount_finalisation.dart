import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:loans_for_bai/view/pages/bank_details/bank_details.dart';
import 'package:loans_for_bai/view/widgets/custom_button.dart';
import 'package:loans_for_bai/view/widgets/image_widget.dart';
import 'package:sizer/sizer.dart';
import '../../../constants/color_constants.dart';
import '../../../constants/ui_constants.dart';
import '../../widgets/text_widgets.dart';

class LoanAmountFinalisation extends StatefulWidget {
  const LoanAmountFinalisation({Key? key}) : super(key: key);

  @override
  State<LoanAmountFinalisation> createState() => _LoanAmountFinalisationState();
}

double lonaSilderValue = 0.5;
double lonaTimeSilderValue = 0.5;

class _LoanAmountFinalisationState extends State<LoanAmountFinalisation> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const ImgWidget(),
            const SubHeading(
              text: 'Kitna Loan Chahiye?',
              fontSize: 22,
            ),
            loanAmountSlider(),
            kHeight5,
            const SubHeading(
              text: 'Kitna samay ke liye Chahiye?',
              fontSize: 22,
            ),
            loanTimeSlider(),
            kHeight5,
            loanDetailsColumn(),
            kHeight4,
            Center(
                child: CustomButton(
              onTap: () => Get.to(const BankDetails(),
                  transition: Transition.rightToLeft),
              text: 'Account details dein',
              width: 80.w,
            )),
          ],
        ),
      ),
    );
  }

  Column loanAmountSlider() {
    return Column(
      children: [
        Slider(
            thumbColor: kPurple,
            activeColor: kPurple,
            inactiveColor: kGreyBase,
            value: lonaSilderValue,
            onChanged: (newValue) {
              setState(() {
                lonaSilderValue = newValue;
              });
            }),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: const [
            SubHeading(text: '1,000'),
            SubHeading(text: '6,000'),
            SubHeading(text: '12,000')
          ],
        ),
      ],
    );
  }

  Column loanTimeSlider() {
    return Column(
      children: [
        Slider(
            thumbColor: kPurple,
            activeColor: kPurple,
            inactiveColor: kGreyBase,
            value: lonaTimeSilderValue,
            onChanged: (newValue) {
              setState(() {
                lonaTimeSilderValue = newValue;
              });
            }),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: const [
            SubHeading(text: '1 Mahina', fontSize: 15),
            SubHeading(text: '6 Mahina', fontSize: 15),
            SubHeading(text: '3 Mahina', fontSize: 15),
          ],
        ),
      ],
    );
  }
}

Container loanDetailsColumn() {
  return Container(
    padding: const EdgeInsets.all(15),
    width: 92.w,
    height: 22.h,
    decoration: BoxDecoration(border: Border.all(color: kGreyBase, width: 2)),
    child: Row(
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SubHeading(text: 'Bayaaz Darr'),
            kHeight2,
            const SubHeading(text: 'Bakaya Rashi'),
            kHeight2,
            const SubHeading(text: 'Masik EMI'),
          ],
        ),
        const Expanded(child: SizedBox()),
        Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            const SubHeading(text: '12%'),
            kHeight2,
            const SubHeading(text: '6,090'),
            kHeight2,
            const SubHeading(text: '2,030'),
          ],
        ),
      ],
    ),
  );
}
