import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:loans_for_bai/constants/ui_constants.dart';
import 'package:lottie/lottie.dart';

import '../../widgets/CenterHeadingWithIcon.dart';
import '../../widgets/image_widget.dart';
import '../../widgets/text_widgets.dart';

class EmployerFeedbackVerification extends StatelessWidget {
  const EmployerFeedbackVerification({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
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
                text: 'Aapka details verify ho rha hai!', fontSize: 22),
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
