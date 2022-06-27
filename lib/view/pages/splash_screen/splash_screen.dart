import 'dart:async';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../constants/ui_constants.dart';
import '../../widgets/image_widget.dart';
import '../../widgets/text_widgets.dart';
import '../login_screen/login_screen.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Timer(
      const Duration(milliseconds: 1500),
      () => Get.off(const LoginScreen(), transition: Transition.rightToLeft),
    );

    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(), // To take full width of the screen, because column only takes the maximum width of it's children.
            kHeight15,
            const SplashLogo(),
            kHeight7,
            const Heading(
              text: 'Loans for Bai',
              fontSize: 32,
            ),
            kHeight2,
            const SubHeading(
              text: 'Ab payein loan sirf kuch hi click mein',
              fontSize: 15,
            ),
            kHeight5,
          ],
        ),
      ),
    );
  }
}
