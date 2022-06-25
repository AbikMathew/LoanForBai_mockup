import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import '../../../constants/ui_constants.dart';
import '../../widgets/image_widget.dart';
import '../../widgets/text_widgets.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
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
          ),
          kHeight3,
          const SubHeading(text: 'Ab payein loan sirf kuch hi click mein'),
          kHeight5,
        ],
      ),
    ));
  }
}
