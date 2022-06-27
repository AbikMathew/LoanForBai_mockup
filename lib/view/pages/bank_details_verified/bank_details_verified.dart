import 'dart:async';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:loans_for_bai/view/pages/loan_amount_transferring/loan_amount_transferring.dart';
import '../../widgets/center_heading_with_icon.dart';

class BankDetailsVerified extends StatelessWidget {
  const BankDetailsVerified({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Timer(
      const Duration(seconds: 2),
      () => Get.off(const LoanAmountTransferring(),
          transition: Transition.rightToLeft),
    );
    return const Scaffold(
      body: CenterHeadingWithIcon(
        heading: 'Aapka account Verify ho gya!',
        icon: CupertinoIcons.checkmark_shield_fill,
        showTick: false,
      ),
    );
  }
}
