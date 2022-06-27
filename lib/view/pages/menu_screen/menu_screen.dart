import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:get/get_rx/src/rx_typedefs/rx_typedefs.dart';
import 'package:loans_for_bai/constants/color_constants.dart';
import 'package:loans_for_bai/constants/ui_constants.dart';
import 'package:loans_for_bai/view/widgets/image_widget.dart';
import 'package:loans_for_bai/view/widgets/text_widgets.dart';
import 'package:sizer/sizer.dart';

class MenuScreen extends StatelessWidget {
  const MenuScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const double leftPadding = 10;
    return Scaffold(
        body: Padding(
      padding: const EdgeInsets.all(15.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const ImgWidget(),
          const SubHeading(
            text: 'Name: Abik Mathew',
            leftPadding: 10,
          ),
          kHeight1,
          const SubHeading(
              text: 'Mobile Number: 8111905637', leftPadding: leftPadding),
          const GreyDivider(),
          IconTextRowButton(onTap: () {}, icon: Icons.share, text: 'Share'),
          kHeight5,
          const GreyDivider(),
          const SubHeading(
            text: 'Help',
            leftPadding: leftPadding,
          ),
          kHeight3,
          IconTextRowButton(
              onTap: () {}, icon: Icons.phone_in_talk, text: 'Call'),
          kHeight3,
          const GreyDivider(),
          const SubHeading(
            text: 'About Us',
            leftPadding: leftPadding,
          ),
          kHeight1,
          const SubHeading(
            text: 'Privacy Policy',
            leftPadding: leftPadding,
          ),
          kHeight1,
          const SubHeading(
            text: 'Terms of User',
            leftPadding: leftPadding,
          ),
          kHeight1,
          const SubHeading(
            text: 'Log Out',
            leftPadding: leftPadding,
          ),
        ],
      ),
    ));
  }
}

class IconTextRowButton extends StatelessWidget {
  const IconTextRowButton({
    Key? key,
    required this.onTap,
    required this.icon,
    required this.text,
  }) : super(key: key);

  final VoidCallback onTap;
  final String text;
  final IconData icon;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Row(
        children: [
          Icon(
            icon,
            size: 30,
            color: kBlackBase,
          ),
          SubHeading(
            text: text,
            leftPadding: 5,
          ),
        ],
      ),
    );
  }
}

class GreyDivider extends StatelessWidget {
  const GreyDivider({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Divider(
      height: 25,
      color: kGreyBase,
      //indent: 20,
      thickness: 2,
    );
  }
}
