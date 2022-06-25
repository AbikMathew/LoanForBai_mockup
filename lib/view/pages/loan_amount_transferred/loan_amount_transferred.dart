import 'package:flutter/material.dart';
import '../../widgets/CenterHeadingWithIcon.dart';

class LoanAmountTransferred extends StatelessWidget {
  const LoanAmountTransferred({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: CenterHeadingWithIcon(
        heading: 'Loan aapke account me transfer ho gya hai!',
        icon: Icons.account_balance_outlined,
        textAlignment: TextAlign.center,
      ),
    );
  }
}
