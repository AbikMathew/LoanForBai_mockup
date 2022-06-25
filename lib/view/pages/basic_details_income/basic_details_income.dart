import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:loans_for_bai/constants/ui_constants.dart';
import 'package:loans_for_bai/view/widgets/custom_button.dart';
import 'package:sizer/sizer.dart';
import '../../widgets/image_widget.dart';
import '../../widgets/text_widgets.dart';
import '../../widgets/custom_text_field.dart';

import 'package:loans_for_bai/view/pages/basic_details_dob/basic_details_dob.dart';
import '../../widgets/custom_progress_indicator.dart';

class BasicDetailsIncome extends StatelessWidget {
  const BasicDetailsIncome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //  backgroundColor: Colors.red,
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const ImgWidget(),
            const CustomProgressIndicator(
              progress: 0.8,
            ),
            kHeight5,
            const SubHeading(
              text: 'Aapki mahine ki income',
              fontSize: 19,
            ),
            kHeight4,
            CustomTextField(
              height: 70,
              onChanged: (val) {
                // var a = val;
              },
            ),
            kHeight5,
            Center(
              child: CustomButton(
                onTap: () {
                  Get.to(const BasicDetailsDob());
                },
                text: 'Loan Payein',
                width: 80.w,
                r: 20,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
