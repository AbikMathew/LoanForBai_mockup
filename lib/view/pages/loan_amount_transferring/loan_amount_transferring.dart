import 'dart:async';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:loans_for_bai/view/pages/home_screen_loan_approved/home_screen_loan_approved.dart';
import 'package:loans_for_bai/view/pages/loan_amount_transferred/loan_amount_transferred.dart';
import '../../widgets/center_heading_with_icon.dart';

class LoanAmountTransferring extends StatelessWidget {
  const LoanAmountTransferring({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Timer(
      const Duration(seconds: 2),
      () => Get.off(const LoanAmountTransferred(),
          transition: Transition.rightToLeft),
    );
    return const Scaffold(
      body: CenterHeadingWithIcon(
        heading: 'Loan aapke account me transfer ho rha hai!',
        icon: Icons.account_balance,
        textAlignment: TextAlign.center,
        showTick: false,
      ),
    );
  }
}
