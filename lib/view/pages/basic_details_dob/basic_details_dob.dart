import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:loans_for_bai/constants/color_constants.dart';
import 'package:loans_for_bai/constants/ui_constants.dart';
import 'package:loans_for_bai/view/widgets/custom_button.dart';
import 'package:sizer/sizer.dart';
import '../../widgets/custom_progress_indicator.dart';
import '../../widgets/custom_text_field.dart';
import '../../widgets/image_widget.dart';
import '../../widgets/text_widgets.dart';

class BasicDetailsDob extends StatelessWidget {
  const BasicDetailsDob({Key? key}) : super(key: key);

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
              progress: 0.5,
            ),
            kHeight5,
            const SubHeading(
              text: 'Apna janam dinn batayein',
            ),
            kHeight4,
            Row(
              children: [
                kWidth15,
                CustomTextField(
                  hintText: 'DOB',
                  width: 50,
                  inputType: TextInputType.datetime,
                  onChanged: (val) {
                    // var a = val;
                  },
                ),
                kWidth1,
                IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.calendar_today,
                      color: kBlackBase,
                      size: 35,
                    ))
              ],
            ),
            kHeight8,
            Center(
              child: CustomButton(
                onTap: () {
                  //Get.to(page);
                },
                text: 'Aage badhein',
                width: 75.w,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
