import 'package:flutter/material.dart';

import '../../constants/color_constants.dart';

class GreyDivider extends StatelessWidget {
  const GreyDivider({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Divider(
      height: 25,
      color: kGreyBase,
      thickness: 2,
    );
  }
}
