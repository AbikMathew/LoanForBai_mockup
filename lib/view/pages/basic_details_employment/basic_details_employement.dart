import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:loans_for_bai/constants/ui_constants.dart';
import 'package:loans_for_bai/view/pages/basic_details_income/basic_details_income.dart';
import 'package:loans_for_bai/view/widgets/custom_button.dart';
import 'package:sizer/sizer.dart';
import '../../widgets/custom_progress_indicator.dart';
import '../../widgets/custom_text_field.dart';
import '../../widgets/image_widget.dart';
import '../../widgets/text_widgets.dart';

class BasicDetailsEmployment extends StatelessWidget {
  const BasicDetailsEmployment({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const ImgWidget(),
            const CustomProgressIndicator(
              progress: 0.60,
            ),
            kHeight5,
            const SubHeading(
              text: 'Aap kitne ghar me khaam karte hain',
              fontSize: 16,
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
                  Get.to(const BasicDetailsIncome(),
                      transition: Transition.rightToLeft);
                },
                text: 'Aage badhein',
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
