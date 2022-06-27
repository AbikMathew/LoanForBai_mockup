import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:loans_for_bai/constants/ui_constants.dart';
import 'package:loans_for_bai/view/pages/employer_feedback_verification/employer_feedback_verification.dart';
import 'package:loans_for_bai/view/widgets/custom_button.dart';
import 'package:sizer/sizer.dart';
import '../../../constants/color_constants.dart';
import '../../widgets/image_widget.dart';
import '../../widgets/text_widgets.dart';
import 'package:loans_for_bai/view/pages/credit_eligibility_approval/credit_eligibility_approval.dart';
import '../../widgets/custom_text_field.dart';

class EmployerDetails extends StatelessWidget {
  const EmployerDetails({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(17.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const ImgWidget(),
              const Heading(
                  text: 'Janein aapko Kitna Loan Milega?', fontSize: 25),
              kHeight2,
              const SubHeading(
                  fontSize: 16,
                  text:
                      'Jinke pass aap kaam karte hain, unka mobile number dein'),
              kHeight2,
              AddEmployerGrid(),
              kHeight5,
              Center(
                child: CustomButton(
                  onTap: () {
                    Get.to(const EmployerFeedbackVerification(),
                        transition: Transition.rightToLeft);
                  },
                  text: 'Loan Amount janein',
                  width: 55.w,
                  r: 35,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  Column AddEmployerGrid() {
    return Column(
      children: [
        Row(
          children: [
            CustomTextField(
              onChanged: (value) {},
              width: 70,
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 10),
              child: IconButton(
                onPressed: () {},
                icon: const Icon(Icons.person_add, color: kBlackBase, size: 50),
              ),
            ),
          ],
        ),
        Row(
          children: [
            CustomTextField(
              onChanged: (value) {},
              width: 70,
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 10),
              child: IconButton(
                onPressed: () {},
                icon: const Icon(Icons.person_add, color: kBlackBase, size: 50),
              ),
            ),
          ],
        ),
        Row(
          children: [
            CustomTextField(
              onChanged: (value) {},
              width: 70,
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 10),
              child: IconButton(
                onPressed: () {},
                icon: const Icon(Icons.person_add, color: kBlackBase, size: 50),
              ),
            ),
          ],
        )
      ],
    );
  }
}
