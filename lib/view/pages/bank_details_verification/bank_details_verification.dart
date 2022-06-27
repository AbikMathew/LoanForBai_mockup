import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:loans_for_bai/constants/ui_constants.dart';
import 'package:loans_for_bai/view/pages/bank_details_verified/bank_details_verified.dart';
import 'package:loans_for_bai/view/widgets/image_widget.dart';
import 'package:loans_for_bai/view/widgets/text_widgets.dart';
import 'package:lottie/lottie.dart';

import '../credit_eligibility_approval/credit_eligibility_approval.dart';

class BankDetailsVerification extends StatelessWidget {
  const BankDetailsVerification({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Timer(
      const Duration(seconds: 3),
      () => Get.off(const BankDetailsVerified(),
          transition: Transition.rightToLeft),
    );

    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const ImgWidget(),
            const Heading(
              text: 'Kripya Intezaar karien!',
              fontSize: 30,
            ),
            kHeight2,
            const SubHeading(
                text: 'Aapka account verify ho rha hai!', fontSize: 22),
            Center(
              child: Lottie.network(
                  'https://assets4.lottiefiles.com/packages/lf20_5apqyyue.json'),
            ),
          ],
        ),
      ),
    );
  }
}
