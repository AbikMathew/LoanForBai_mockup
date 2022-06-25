import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../widgets/CenterHeadingWithIcon.dart';

class BankDetailsVerified extends StatelessWidget {
  const BankDetailsVerified({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: CenterHeadingWithIcon(
        heading: 'Aapka account Verify ho gya',
        icon: CupertinoIcons.checkmark_shield_fill,
      ),
    );
  }
}
