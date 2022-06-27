import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:loans_for_bai/view/pages/basic_details_name/basic_details_name.dart';
import 'package:loans_for_bai/view/widgets/image_widget.dart';
import 'package:loans_for_bai/view/widgets/text_widgets.dart';
import 'package:sizer/sizer.dart';

import '../../../constants/ui_constants.dart';
import '../../widgets/custom_button.dart';

class OtpVerification extends StatelessWidget {
  const OtpVerification({Key? key}) : super(key: key);

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
              text: 'OTP Daalien',
              fontSize: 20,
            ),
            VerifyButtonAndTermsOfUser(() => Get.offAll(const BasicDetailsName(),
                transition: Transition.rightToLeft)),
          ],
        ),
      ),
    );
  }
}

Column VerifyButtonAndTermsOfUser(VoidCallback onTap) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.center,
    children: [
      Container(),
      kHeight7,
      CustomButton(
        onTap: onTap,
        text: 'Verify Karien',
        width: 80.w,
      ),
      kHeight4,
      const SubHeading(
        text: 'Terms of User & Privacy Policy ko mante hain',
        fontSize: 15,
      ),
    ],
  );
}
