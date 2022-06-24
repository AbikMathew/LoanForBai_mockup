import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: [
        Image.asset('assest/image/loan_image.jpg'),
        Container(),
        Text('Loans for Bai'),
        Text('Ab payein loan sirf kuch hi click mein'),
      ],
    ));
  }
}
