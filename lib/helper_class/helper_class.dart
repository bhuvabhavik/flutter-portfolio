import 'package:flutter/material.dart';

class HelperClass extends StatelessWidget {
  const HelperClass(
      {super.key,
      required this.mobile,
      required this.tablet,
      required this.desktop,
      required this.paddingWidth,
      required this.bgColor});

  final Widget mobile;
  final Widget tablet;
  final Widget desktop;
  final double paddingWidth;
  final Color bgColor;

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;

    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth < 768) {
          return Container(
            // height: size.height,
            width: size.width,
            color: bgColor,
            padding: EdgeInsets.symmetric(
                vertical: size.height * 0.2, horizontal: paddingWidth),
            child: mobile,
          );
        } else if (constraints.maxWidth < 1200) {
          return Container(
            // height: size.height,
            width: size.width,
            color: bgColor,
            padding: EdgeInsets.symmetric(
                vertical: size.height * 0.2, horizontal: paddingWidth),
            child: tablet,
          );
        } else {
          return Container(
            // height: size.height,
            width: size.width,
            alignment: Alignment.center,
            color: bgColor,
            padding: EdgeInsets.symmetric(
                vertical: size.height * 0.2, horizontal: paddingWidth),
            child: desktop,
          );
        }
      },
    );
  }
}
