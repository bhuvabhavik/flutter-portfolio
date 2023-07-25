import 'package:animate_do/animate_do.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:my_portfolio_webapp_1/globals/app_assets.dart';
import 'package:my_portfolio_webapp_1/globals/app_buttons.dart';
import 'package:my_portfolio_webapp_1/globals/app_colors.dart';
import 'package:my_portfolio_webapp_1/globals/app_text_styles.dart';
import 'package:my_portfolio_webapp_1/globals/constants.dart';
import 'package:my_portfolio_webapp_1/helper_class/helper_class.dart';

import 'package:my_portfolio_webapp_1/widgets/profile_animation.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final socialButtons = <String>[
    AppAssets.instagram,
    AppAssets.linkedin,
    AppAssets.github,
    AppAssets.thread,
  ];
  var socialBI;

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return HelperClass(
        mobile: Column(
          children: [
            buildHomePersonalInfo(size),
            Constants.sizedBox(height: 25),
            const ProfileAnimation(),
          ],
        ),
        tablet: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: buildHomePersonalInfo(size),
            ),
            const ProfileAnimation(),
          ],
        ),
        desktop: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(child: buildHomePersonalInfo(size)),
            const ProfileAnimation(),
          ],
        ),
        bgColor: AppColors.bgColor,
        paddingWidth: size.width*0.1,
      );
  }

  Column buildHomePersonalInfo(Size size) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        FadeInDown(
          duration: const Duration(milliseconds: 1200),
          child: Text(
            "Hello, It's me",
            style: AppTextStyles.montserratStyle(color: Colors.white),
          ),
        ),
        Constants.sizedBox(height: 15),
        FadeInRight(
            duration: const Duration(milliseconds: 1400),
            child: Text(
              "Bhavik Bhuva",
              style: AppTextStyles.headingStyles(),
            )),
        Constants.sizedBox(height: 15),
        FadeInLeft(
            duration: const Duration(milliseconds: 1400),
            child: Row(
              children: [
                Text(
                  "I'm a ",
                  style: AppTextStyles.montserratStyle(color: Colors.white),
                ),
                AnimatedTextKit(
                  animatedTexts: [
                    TyperAnimatedText(
                      'Flutter Developer',
                      textStyle: AppTextStyles.montserratStyle(
                          color: Colors.lightBlue),
                    ),
                    TyperAnimatedText('Graphics Designer',
                        textStyle: AppTextStyles.montserratStyle(
                            color: Colors.lightBlue)),
                    TyperAnimatedText('Video Editor',
                        textStyle: AppTextStyles.montserratStyle(
                            color: Colors.lightBlue)),
                  ],
                  pause: const Duration(milliseconds: 1000),
                  displayFullTextOnTap: true,
                  stopPauseOnTap: true,
                )
              ],
            )),
        Constants.sizedBox(height: 15),
        FadeInDown(
          duration: const Duration(milliseconds: 1600),
          // width: size.width * 0.5,
          child: Expanded(
            child: Text(
              "Step into my world of graphics design, video editing, and Flutter development "
              "as my personal portfolio website showcases the intersection of"
              " artistry and technological innovation.",
              style: AppTextStyles.normalStyle(),
            ),
          ),
        ),
        Constants.sizedBox(height: 22),
        FadeInUp(
          duration: const Duration(milliseconds: 1600),
          child: SizedBox(
            height: 48,
            child: ListView.separated(
              itemCount: socialButtons.length,
              shrinkWrap: true,
              scrollDirection: Axis.horizontal,
              separatorBuilder: (context, child) =>
                  Constants.sizedBox(width: 8),
              itemBuilder: (context, index) {
                return InkWell(
                  onTap: () {},
                  onHover: (value) {
                    setState(() {
                      if (value) {
                        socialBI = index;
                      } else {
                        socialBI = null;
                      }
                    });
                  },
                  borderRadius: BorderRadius.circular(550.0),
                  hoverColor: AppColors.themeColor,
                  splashColor: AppColors.lawGreen,
                  child: buildSocialButton(
                      asset: socialButtons[index],
                      hover: socialBI == index ? true : false),
                );
              },
            ),
          ),
        ),
        Constants.sizedBox(height: 15),
        FadeInUp(
          duration: const Duration(milliseconds: 1800),
          child: AppButtons.buildMaterialButton(
            onTap: () {},
            buttonName: 'Download Resume',
          ),
        ),
      ],
    );
  }

  Ink buildSocialButton({required String asset, required bool hover}) {
    return Ink(
      width: 45,
      height: 45,
      decoration: BoxDecoration(
        border: Border.all(color: Colors.cyan, width: 2),
        color: AppColors.themeColor,
        shape: BoxShape.circle,
      ),
      padding: const EdgeInsets.all(6),
      child: Image.asset(
        asset,
        width: 10,
        height: 10,
        color: hover ? Colors.red : AppColors.themeColor,
        fit: BoxFit.fill,
      ),
    );
  }
}
