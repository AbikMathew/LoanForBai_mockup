import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'view/pages/bank_details_verification/bank_details_verification.dart';
import 'package:sizer/sizer.dart';

import 'view/pages/bank_details_verified/bank_details_verified.dart';
import 'view/pages/loan_amount_transferring/loan_amount_transferring.dart';

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
        home: LoanAmountTransferring(),
        //home: BasicDetailsName(),
        //  home: const OtpVerification()
        //home: SplashScreen(),
        //home: const LoginScreen(),
      );
    });
  }
}
