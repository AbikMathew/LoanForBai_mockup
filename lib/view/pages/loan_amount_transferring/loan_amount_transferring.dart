import 'package:flutter/material.dart';
import '../../widgets/CenterHeadingWithIcon.dart';

class LoanAmountTransferring extends StatelessWidget {
  const LoanAmountTransferring({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: CenterHeadingWithIcon(
        heading: 'Loan aapke account me transfer ho rha hai!',
        icon: Icons.account_balance,
        textAlignment: TextAlign.center,
      ),
    );
  }
}
