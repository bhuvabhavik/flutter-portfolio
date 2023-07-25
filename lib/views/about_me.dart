import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:my_portfolio_webapp_1/globals/app_assets.dart';
import 'package:my_portfolio_webapp_1/globals/app_colors.dart';
import 'package:my_portfolio_webapp_1/helper_class/helper_class.dart';

import '../globals/app_buttons.dart';
import '../globals/app_text_styles.dart';
import '../globals/constants.dart';

class AboutMe extends StatelessWidget {
  const AboutMe({super.key});

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return HelperClass(
      mobile: Column(
        //mainAxisAlignment: MainAxisAlignment.spaceAround,

        // crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          buildAboutMeContents(),
          Constants.sizedBox(height: 35),
          buildProfilePicture(),
        ],
      ),
      tablet: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.center,
        // crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          buildProfilePicture(),
          Constants.sizedBox(width: 25),
          Expanded(child: buildAboutMeContents()),
        ],
      ),
      desktop: Row(
        //mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.center,
        // crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          buildProfilePicture(),
          Constants.sizedBox(width: 25),
          Expanded(child: buildAboutMeContents()),
        ],
      ),
      paddingWidth: size.width * 0.1,
      bgColor: AppColors.bgColor2,
    );
  }

  FadeInRight buildProfilePicture() {
    return FadeInRight(
      duration: const Duration(milliseconds: 1200),
      child: Image.asset(
        AppAssets.profile1,
        height: 400,
        width: 400,
      ),
    );
  }

  Column buildAboutMeContents() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        FadeInRight(
            duration: const Duration(milliseconds: 1200),
            child: RichText(
              text: TextSpan(
                  text: "About ",
                  style: AppTextStyles.headingStyles(fontSize: 30),
                  children: [
                    TextSpan(
                        text: 'Me!',
                        style: AppTextStyles.headingStyles(
                            fontSize: 30, color: AppColors.robinEdgeBlue))
                  ]),
            )),
        Constants.sizedBox(height: 6),
        FadeInLeft(
            duration: Duration(milliseconds: 1400),
            child: Text(
              "Flutter Developer",
              style: AppTextStyles.montserratStyle(color: Colors.white),
            )),
        Constants.sizedBox(height: 8),
        FadeInLeft(
          duration: const Duration(milliseconds: 1600),
          child: Text(
            "Step into my world of graphics design, video editing, and Flutter development "
            "as my personal portfolio website showcases the intersection of"
            " artistry and technological innovation.Step into my world of graphics design, video editing, and Flutter development "
            "as my personal portfolio website showcases the intersection of"
            " artistry and technological innovation.",
            style: AppTextStyles.normalStyle(),
          ),
        ),
        Constants.sizedBox(height: 15),
        FadeInUp(
          duration: const Duration(milliseconds: 1800),
          child: AppButtons.buildMaterialButton(
            onTap: () {},
            buttonName: 'Read More',
          ),
        ),
      ],
    );
  }
}
