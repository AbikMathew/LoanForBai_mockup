import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';
import 'package:loans_for_bai/constants/color_constants.dart';
import 'package:loans_for_bai/constants/ui_constants.dart';
import 'package:loans_for_bai/view/pages/basic_details_employment/basic_details_employement.dart';
import 'package:loans_for_bai/view/widgets/custom_button.dart';
import 'package:sizer/sizer.dart';
import '../../widgets/custom_progress_indicator.dart';
import '../../widgets/custom_text_field.dart';
import '../../widgets/image_widget.dart';
import '../../widgets/text_widgets.dart';

class BasicDetailsDob extends StatefulWidget {
  const BasicDetailsDob({Key? key}) : super(key: key);

  @override
  State<BasicDetailsDob> createState() => _BasicDetailsDobState();
}

class _BasicDetailsDobState extends State<BasicDetailsDob> {
  final TextEditingController _dateController = TextEditingController();

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
              progress: 0.35,
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
                  controller: _dateController,
                  hintText: 'DOB',
                  width: 50,
                  inputType: TextInputType.datetime,
                  onChanged: (val) {},
                ),
                kWidth1,
                IconButton(
                    onPressed: () async {
                      final date = await showDatePicker(
                        context: context,
                        initialDate: DateTime.now(),
                        firstDate: DateTime(1900),
                        lastDate: DateTime(2050),
                      );
                      _dateController.text =
                          DateFormat('dd-MM-yyyy').format(date ?? DateTime.now());
                      setState(() {});
                    },
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
                  Get.to(const BasicDetailsEmployment(),
                      transition: Transition.rightToLeft);
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
