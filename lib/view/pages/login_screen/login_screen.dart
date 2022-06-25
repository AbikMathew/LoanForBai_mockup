import 'package:flutter/material.dart';
import 'package:loans_for_bai/constants/text_constants.dart';
import 'package:loans_for_bai/constants/ui_constants';
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
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(), // To take full width of the screen, because column only takes the maximum width of it's children.
            const ImgWidget(),
            const SubHeading(
              text: 'Apna Mobile Number Verify Karien',
              fontSize: 20,
            ),
            kHeight10,
            Row(
              children: [
                const Heading(text: '+91'),
                SizedBox(
                  width: 70.w,
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: 'Mobile Number',
                      hintStyle: kText25b,
                      // enabledBorder: ,
                      border: const OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.amber, width: 2),
                      ),
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
