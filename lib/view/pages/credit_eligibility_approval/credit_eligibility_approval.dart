import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:loans_for_bai/constants/ui_constants.dart';
import 'package:loans_for_bai/view/pages/loan_amount_finalisation/loan_amount_finalisation.dart';
import 'package:loans_for_bai/view/widgets/custom_button.dart';
import 'package:sizer/sizer.dart';
import '../../../constants/color_constants.dart';
import '../../widgets/image_widget.dart';
import '../../widgets/text_widgets.dart';

class CreditEligibilityApproval extends StatelessWidget {
  const CreditEligibilityApproval({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(14.0),
        child: ListView(
          children: [
            const Align(
              alignment: Alignment.topLeft,
              child: ImgWidget(),
            ),
            Center(
              child: Column(
                children: [
                  const LandscapeImgWidget(),
                  kHeight3,
                  const SubHeading(
                    text:
                        'Aapko 12,000 tak ke rashi ka loan mil sakta hai, jo aapko 6 mahine ke andar wapas kar sakte hain.',
                    fontSize: 17,
                  ),
                  kHeight10,
                  CustomButton(
                    onTap: () => Get.to(const LoanAmountFinalisation(),
                        transition: Transition.rightToLeft),
                    text: 'Loan lein',
                    width: 80.w,
                  ),
                  kHeight2,
                  TextButton(
                      onPressed: () {},
                      child: const Text(
                        'Abhi Loan nahi chahiye',
                        style: TextStyle(
                            color: kPurple,
                            decoration: TextDecoration.underline),
                      ))
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
