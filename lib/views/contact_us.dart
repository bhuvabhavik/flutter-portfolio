import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:my_portfolio_webapp_1/globals/app_buttons.dart';
import 'package:my_portfolio_webapp_1/helper_class/helper_class.dart';

import '../globals/app_colors.dart';
import '../globals/app_text_styles.dart';
import '../globals/constants.dart';

class ContactUs extends StatelessWidget {
  const ContactUs({super.key});

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return HelperClass(
          mobile: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              buildContactText(),
              Constants.sizedBox(height: 40),
              Material(
                borderRadius: BorderRadius.circular(10),
                elevation: 8,
                color: Colors.transparent,
                child: TextField(
                  cursorColor: AppColors.white,
                  style: AppTextStyles.normalStyle(),
                  decoration: buildInputDecoration(hintText: "Full Name"),
                ),
              ),
              Constants.sizedBox(height: 20),
              Material(
                borderRadius: BorderRadius.circular(10),
                elevation: 8,
                color: Colors.transparent,
                child: TextField(
                  cursorColor: AppColors.white,
                  style: AppTextStyles.normalStyle(),
                  decoration: buildInputDecoration(hintText: "Email Address"),
                ),
              ),
              Constants.sizedBox(height: 20),
              Material(
                borderRadius: BorderRadius.circular(10),
                elevation: 8,
                color: Colors.transparent,
                child: TextField(
                  cursorColor: AppColors.white,
                  style: AppTextStyles.normalStyle(),
                  decoration: buildInputDecoration(hintText: "Mobile Number"),
                ),
              ),
              Constants.sizedBox(height: 20),
              Material(
                borderRadius: BorderRadius.circular(10),
                elevation: 8,
                color: Colors.transparent,
                child: TextField(
                  cursorColor: AppColors.white,
                  style: AppTextStyles.normalStyle(),
                  decoration: buildInputDecoration(hintText: "Email Subject"),
                ),
              ),
              Constants.sizedBox(height: 20),
              Material(
                borderRadius: BorderRadius.circular(10),
                elevation: 8,
                color: Colors.transparent,
                child: TextField(
                  cursorColor: AppColors.white,
                  style: AppTextStyles.normalStyle(),
                  maxLines: 15,
                  decoration: buildInputDecoration(hintText: "Your Message"),
                ),
              ),
              Constants.sizedBox(height: 40),
              AppButtons.buildMaterialButton(
                  onTap: () {}, buttonName: "Send Message"),
              Constants.sizedBox(height: 30),
            ],
          ),
          tablet: buildForm(),
          desktop: buildForm(),
          bgColor: AppColors.bgColor,
          paddingWidth: size.width * 0.2);

  }

  Column buildForm() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        buildContactText(),
        Constants.sizedBox(height: 40),
        Row(
          children: [
            Expanded(
              child: Material(
                borderRadius: BorderRadius.circular(10),
                elevation: 8,
                color: Colors.transparent,
                child: TextField(
                  cursorColor: AppColors.white,
                  style: AppTextStyles.normalStyle(),
                  decoration: buildInputDecoration(hintText: "Full Name"),
                ),
              ),
            ),
            Constants.sizedBox(width: 20),
            Expanded(
              child: Material(
                borderRadius: BorderRadius.circular(10),
                elevation: 8,
                color: Colors.transparent,
                child: TextField(
                  cursorColor: AppColors.white,
                  style: AppTextStyles.normalStyle(),
                  decoration: buildInputDecoration(hintText: "Email Address"),
                ),
              ),
            ),
          ],
        ),
        Constants.sizedBox(height: 20),
        Row(
          children: [
            Expanded(
              child: Material(
                borderRadius: BorderRadius.circular(10),
                elevation: 8,
                color: Colors.transparent,
                child: TextField(
                  cursorColor: AppColors.white,
                  style: AppTextStyles.normalStyle(),
                  decoration: buildInputDecoration(hintText: "Mobile Number"),
                ),
              ),
            ),
            Constants.sizedBox(width: 20),
            Expanded(
              child: Material(
                borderRadius: BorderRadius.circular(10),
                elevation: 8,
                color: Colors.transparent,
                child: TextField(
                  cursorColor: AppColors.white,
                  style: AppTextStyles.normalStyle(),
                  decoration: buildInputDecoration(hintText: "Email Subject"),
                ),
              ),
            ),
          ],
        ),
        Constants.sizedBox(height: 20),
        Material(
          borderRadius: BorderRadius.circular(10),
          elevation: 8,
          color: Colors.transparent,
          child: TextField(
            cursorColor: AppColors.white,
            style: AppTextStyles.normalStyle(),
            maxLines: 15,
            decoration: buildInputDecoration(hintText: "Your Message"),
          ),
        ),
        Constants.sizedBox(height: 40),
        AppButtons.buildMaterialButton(
            onTap: () {}, buttonName: "Send Message"),
        Constants.sizedBox(height: 30),
      ],
    );
  }

  FadeInDown buildContactText() {
    return FadeInDown(
        duration: const Duration(milliseconds: 1200),
        child: RichText(
          text: TextSpan(
              text: "Contact ",
              style: AppTextStyles.headingStyles(fontSize: 30),
              children: [
                TextSpan(
                    text: 'Me ',
                    style: AppTextStyles.headingStyles(
                        fontSize: 30, color: AppColors.robinEdgeBlue))
              ]),
        ));
  }

  InputDecoration buildInputDecoration({required String hintText}) {
    return InputDecoration(
        hintText: hintText,
        hintStyle: AppTextStyles.comfortaaStyle(),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: BorderSide.none,
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: BorderSide.none,
        ),
        filled: true,
        // focusColor: Colors.blueGrey,
        fillColor: AppColors.bgColor2,
        contentPadding: EdgeInsets.symmetric(horizontal: 20, vertical: 12));
  }
}
