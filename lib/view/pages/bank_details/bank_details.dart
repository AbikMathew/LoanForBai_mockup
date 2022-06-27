import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:loans_for_bai/constants/color_constants.dart';
import 'package:loans_for_bai/constants/ui_constants.dart';
import 'package:loans_for_bai/view/pages/bank_details_verification/bank_details_verification.dart';
import 'package:loans_for_bai/view/widgets/custom_button.dart';
import 'package:loans_for_bai/view/widgets/image_widget.dart';
import 'package:loans_for_bai/view/widgets/text_widgets.dart';
import 'package:sizer/sizer.dart';
import 'package:loans_for_bai/view/widgets/custom_text_field.dart';

class BankDetails extends StatefulWidget {
  const BankDetails({Key? key}) : super(key: key);

  @override
  State<BankDetails> createState() => _BankDetailsState();
}

bool checked = false;

class _BankDetailsState extends State<BankDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const ImgWidget(),
              const Heading(
                text: '6,000 aapke bank account Jama kiye jayenge!',
                fontSize: 27,
              ),
              kHeight3,
              const Heading(text: 'Bank Name', fontSize: 24),
              kHeight1,
              CustomTextField(
                onChanged: (vale) {},
                hintText: 'Bank Name',
              ),
              kHeight2,
              const Heading(text: 'Account Number', fontSize: 24),
              kHeight1,
              CustomTextField(
                onChanged: (vale) {},
                hintText: 'Account Number',
              ),
              kHeight2,
              const Heading(text: 'Branch Address', fontSize: 24),
              kHeight1,
              CustomTextField(
                onChanged: (vale) {},
                hintText: 'Branch Address',
              ),
              kHeight3,
              CustomCheckboxTile(),
              Center(
                child: CustomButton(
                  onTap: () => Get.to(const BankDetailsVerification(),
                      transition: Transition.rightToLeft),
                  text: 'Account me transfer karein',
                  width: 80.w,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Row CustomCheckboxTile() {
    return Row(
      children: [
        SizedBox(
          height: 50,
          width: 20,
          child: Checkbox(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5)),
              activeColor: kPurple,
              checkColor: kWhite,
              value: checked,
              onChanged: (value) {
                checked = value!;
                setState(() {});
              }),
        ),
        kWidth2,
        const SubHeading(
          text: 'Issi account se loan amount wapas hoga!',
          fontSize: 15,
        ),
      ],
    );
  }
}
