import 'dart:async';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:loans_for_bai/view/pages/navbar/navbar.dart';
import '../../widgets/center_heading_with_icon.dart';
import '../home_screen_loan_approved/home_screen_loan_approved.dart';

class LoanAmountTransferred extends StatelessWidget {
  const LoanAmountTransferred({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Timer(
      const Duration(seconds: 2),
      () => Get.off(const Navbar(showLoanDetailsColumn: true), transition: Transition.rightToLeft),
    );
    return const Scaffold(
      body: CenterHeadingWithIcon(
        heading: 'Loan aapke account me transfer ho gya hai!',
        icon: Icons.account_balance_outlined,
        textAlignment: TextAlign.center,
        showTick: true,
      ),
    );
  }
}
