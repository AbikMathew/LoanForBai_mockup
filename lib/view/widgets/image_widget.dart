import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:sizer/sizer.dart';

class SplashLogo extends StatelessWidget {
  const SplashLogo({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 30.h,
      width: 80.w,
      decoration: const BoxDecoration(
        image: DecorationImage(
          fit: BoxFit.cover,
          image: AssetImage('assest/image/loan_image.jpg'),
        ),
      ),
    );
  }
}

class ImgWidget extends StatelessWidget {
  const ImgWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 35, horizontal: 10),
      child: Container(
        height: 10.h,
        width: 35.w,
        decoration: const BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.cover,
            image: AssetImage('assest/image/loan_image.jpg'),
          ),
        ),
      ),
    );
  }
}

class LandscapeImgWidget extends StatelessWidget {
  const LandscapeImgWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 10),
      child: Container(
        height: 20.h,
        width: 75.w,
        decoration: const BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.cover,
            image: AssetImage('assest/image/landscape_image.jpg'),
          ),
        ),
      ),
    );
  }
}
