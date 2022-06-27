import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:loans_for_bai/constants/color_constants.dart';
import 'package:loans_for_bai/constants/text_constants.dart';
//import 'package:loans_for_bai/constants/ui_constants';
import 'package:loans_for_bai/constants/ui_constants.dart';
import 'package:loans_for_bai/view/pages/otp_verification/otp_verification.dart';
import 'package:loans_for_bai/view/widgets/custom_button.dart';
import 'package:sizer/sizer.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:loans_for_bai/view/widgets/image_widget.dart';
import 'package:loans_for_bai/view/widgets/text_widgets.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Colors.red,
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(), // To take full width of the screen, because column only takes the maximum width of it's children.
              const ImgWidget(),
              const SubHeading(
                text: 'Apna Mobile Number Verify Karien',
                //fontSize: 20,
              ),
              kHeight10,
              Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  kWidth3,
                  const Heading(text: '+91',fontSize: 35,),
                  kWidth1,
                  InputTextField(),
                ],
              ),
              OTPButtonAndTermsOfUser(onTap: () {
                Get.to(const OtpVerification(),
                    transition: Transition.rightToLeft);
              }),
            ],
          ),
        ),
      ),
    );
  }

  Column OTPButtonAndTermsOfUser({required onTap}) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(),
        kHeight7,
        CustomButton(
          onTap: onTap,
          text: 'OTP Payein',
          width: 80.w,
        ),
        kHeight4,
        const SubHeading(
          text: 'Terms of User & Privacy Policy ko mante hain',
          fontSize: 13,
        ),
      ],
    );
  }

  SizedBox InputTextField() {
    return SizedBox(
      height: 7.h,
      width: 67.w,
      child: const TextField(
        showCursor: false,
        decoration: InputDecoration(
          hintText: 'Mobile Number',
          hintStyle: kText25b,
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: kPurple, width: 2),
          ),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: kGreyBase, width: 2),
          ),
        ),
      ),
    );
  }
}
