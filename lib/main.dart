import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:loans_for_bai/constants/color_constants.dart';
import 'package:loans_for_bai/view/pages/basic_details_name/basic_details_name.dart';
import 'package:loans_for_bai/view/pages/login_screen/login_screen.dart';
import 'package:loans_for_bai/view/pages/otp_verification/otp_verification.dart';
import 'package:sizer/sizer.dart';
import 'package:loans_for_bai/view/pages/splash_screen/splash_screen.dart';

import 'view/pages/employer_details/employer_details.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
    statusBarIconBrightness: Brightness.dark,
    statusBarColor: Colors.transparent, // status bar color
  ));
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Sizer(builder: (context, orientation, deviceType) {
      return GetMaterialApp(
        theme: ThemeData(primarySwatch: Colors.purple),
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        home: EmployerDetails(),
        //home: BasicDetailsName(),
        //  home: const OtpVerification()
        //home: SplashScreen(),
        //home: const LoginScreen(),
      );
    });
  }
}
