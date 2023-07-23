import 'package:animate_do/animate_do.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:my_portfolio_webapp_1/globals/app_assets.dart';
import 'package:my_portfolio_webapp_1/globals/app_buttons.dart';
import 'package:my_portfolio_webapp_1/globals/app_colors.dart';
import 'package:my_portfolio_webapp_1/globals/app_text_styles.dart';
import 'package:my_portfolio_webapp_1/globals/constants.dart';
import 'package:my_portfolio_webapp_1/views/about_me.dart';
import 'package:my_portfolio_webapp_1/views/my_portfolio.dart';
import 'package:my_portfolio_webapp_1/views/my_services.dart';
import 'package:my_portfolio_webapp_1/widgets/profile_animation.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: AppColors.bgColor,
      appBar: AppBar(
          toolbarHeight: 90,
          titleSpacing: 100,
          backgroundColor: AppColors.bgColor,
          title: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 60),
            child: Row(
              children: [
                Text(
                  "Portfolio",
                  style: AppTextStyles.headerTextStyle(),
                ),
                const Spacer(),
                Text(
                  "Home",
                  style: AppTextStyles.headerTextStyle(),
                ),
                const SizedBox(width: 30),
                Text(
                  "About",
                  style: AppTextStyles.headerTextStyle(),
                ),
                const SizedBox(width: 30),
                Text(
                  "Services",
                  style: AppTextStyles.headerTextStyle(),
                ),
                const SizedBox(width: 30),
                Text(
                  "Portfolio",
                  style: AppTextStyles.headerTextStyle(),
                ),
                const SizedBox(width: 30),
                Text(
                  "Contact",
                  style: AppTextStyles.headerTextStyle(),
                ),
                const SizedBox(width: 30),
              ],
            ),//nav row
          )),
      body: SingleChildScrollView(
        padding: EdgeInsets.only(
            top: size.height * 0.05,
            left: size.width * 0.01,
            right: size.width * 0.01
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  // mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    FadeInDown(
                      duration: Duration(milliseconds: 1200),
                      child: Text(
                        "Hello, It\'s me",
                        style:
                            AppTextStyles.montserratStyle(color: Colors.white),
                      ),
                    ),
                    Constants.sizedBox(height: 15),
                    FadeInRight(
                        duration: Duration(milliseconds: 1400),
                        child: Text(
                          "Bhavik Bhuva",
                          style: AppTextStyles.headingStyles(),
                        )),
                    Constants.sizedBox(height: 15),
                    FadeInLeft(
                        duration: Duration(milliseconds: 1400),
                        child: Row(
                          children: [
                            Text(
                              "I\'m a ",
                              style: AppTextStyles.montserratStyle(
                                  color: Colors.white),
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
                      duration: Duration(milliseconds: 1600),
                      // width: size.width * 0.5,
                      child: SizedBox(
                        width: size.width * 0.5,
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
                      duration: Duration(milliseconds: 1600),
                      child: Row(
                        children: [
                          buildSocialButton(asset: AppAssets.github),
                          Constants.sizedBox(width: 12),
                          buildSocialButton(asset: AppAssets.linkedin),
                          Constants.sizedBox(width: 12),
                          buildSocialButton(asset: AppAssets.instagram),
                          Constants.sizedBox(width: 12),
                          buildSocialButton(asset: AppAssets.thread),
                          Constants.sizedBox(width: 12),
                        ],
                      ),
                    ),
                    Constants.sizedBox(height: 15),
                    FadeInUp(
                      duration: const Duration(milliseconds: 1800),
                      child: AppButtons.buildMaterialButton(onTap: () {}, buttonName: 'Download Resume',),
                    ),
                  ],
                ),

                const ProfileAnimation(),
              ],
            ),
            const SizedBox(height: 220,),
            const AboutMe(),
            const MyServices(),
            const MyPortfolio(),
          ],
        ),
      ),
    );
  }


  Ink buildSocialButton({required String asset}) {
    return Ink(
      width: 45,
      height: 45,
      decoration: BoxDecoration(
        border: Border.all(color: AppColors.bgColor, width: 3),
        color: AppColors.bgColor,
        shape: BoxShape.circle,
      ),
      child: Padding(
        padding: const EdgeInsets.all(6.0),
        child: InkWell(
          radius: 50,
          borderRadius: BorderRadius.circular(500),
          hoverColor: AppColors.aqua,
          splashColor: AppColors.lawGreen,
          onTap: () {},
          child: Image.asset(
            asset,
            width: 32,
            height: 30,
            color: AppColors.themeColor,
            fit: BoxFit.fill,
          ),
        ),
      ),
    );
  }
}
