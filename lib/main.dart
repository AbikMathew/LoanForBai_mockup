import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:loans_for_bai/view/pages/employer_feedback_verification/employer_feedback_verification.dart';
import 'package:loans_for_bai/view/pages/home_screen/home_screen.dart';
import 'package:loans_for_bai/view/pages/home_screen_loan_approved/home_screen_loan_approved.dart';
import 'view/pages/bank_details/bank_details.dart';
import 'view/pages/bank_details_verification/bank_details_verification.dart';
import 'package:sizer/sizer.dart';

import 'view/pages/bank_details_verified/bank_details_verified.dart';
import 'view/pages/loan_amount_finalisation/loan_amount_finalisation.dart';
import 'view/pages/loan_amount_transferred/loan_amount_transferred.dart';
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
        home: LoanAmountFinalisation(),
        //home: BasicDetailsName(),
        //  home: const OtpVerification()
        //home: SplashScreen(),
        //home: const LoginScreen(),
      );
    });
  }
}
