import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:loans_for_bai/view/pages/splash_screen/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const GetMaterialApp(
      title: 'Flutter Demo',
      home: SplashScreen(
      ),
    );
  }
}
