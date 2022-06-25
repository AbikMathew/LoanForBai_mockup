import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:loans_for_bai/constants/ui_constants.dart';
import 'package:loans_for_bai/view/widgets/custom_text_field.dart';
import 'package:loans_for_bai/view/widgets/image_widget.dart';
import 'package:loans_for_bai/view/widgets/text_widgets.dart';

class BankDetails extends StatelessWidget {
  const BankDetails({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    bool _checked = false;
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ImgWidget(),
            Heading(
              text: '6,000 aapke bank account Jama kiye jayenge!',
              fontSize: 27,
            ),
            kHeight3,
            Heading(text: 'Bank Name', fontSize: 24),
            kHeight1,
            CustomTextField(
              onChanged: (vale) {},
              hintText: 'Bank Name',
            ),
            kHeight2,
            Heading(text: 'Account Number', fontSize: 24),
            kHeight1,
            CustomTextField(
              onChanged: (vale) {},
              hintText: 'Account Number',
            ),
            kHeight2,
            Heading(text: 'Branch Address', fontSize: 24),
            kHeight1,
            CustomTextField(
              onChanged: (vale) {},
              hintText: 'Branch Address',
            ),
            CheckboxListTile(value: _checked, onChanged: (value){
              setState
            },
            title: Text('Issi account se loan amount wapas hoga!'),
            
            )
          ],
        ),
      ),
    );
  }
}
