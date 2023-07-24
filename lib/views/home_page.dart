import 'package:animate_do/animate_do.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:my_portfolio_webapp_1/globals/app_assets.dart';
import 'package:my_portfolio_webapp_1/globals/app_buttons.dart';
import 'package:my_portfolio_webapp_1/globals/app_colors.dart';
import 'package:my_portfolio_webapp_1/globals/app_text_styles.dart';
import 'package:my_portfolio_webapp_1/globals/constants.dart';
import 'package:my_portfolio_webapp_1/views/about_me.dart';
import 'package:my_portfolio_webapp_1/views/contact_us.dart';
import 'package:my_portfolio_webapp_1/views/footer_class.dart';
import 'package:my_portfolio_webapp_1/views/my_portfolio.dart';
import 'package:my_portfolio_webapp_1/views/my_services.dart';
import 'package:my_portfolio_webapp_1/widgets/profile_animation.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final onMenuHover = Matrix4.identity()..scale(1.0);
  final menuItems = [
    'Home',
    'About',
    'Services',
    'Portfolio',
    'Contact',
  ];

  final socialButtons = <String>[
    AppAssets.instagram,
    AppAssets.linkedin,
    AppAssets.github,
    AppAssets.thread,
  ];

  var menuIndex = 0;
  var socialBI;

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
                SizedBox(
                  height: 30,
                  child: ListView.separated(
                    itemCount: menuItems.length,
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    separatorBuilder: (context, child) =>
                        Constants.sizedBox(width: 8),
                    itemBuilder: (context, index) {
                      return InkWell(
                        onTap: () {},
                        borderRadius: BorderRadius.circular(100),
                        onHover: (value) {
                          setState(() {
                            if (value) {
                              menuIndex = index;
                            } else {
                              menuIndex = 0;
                            }
                          });
                        },
                        child: buildNavBarAnimatedContainer(
                            index, menuIndex == index ? true : false),
                      );
                    },
                  ),
                ),
                // Text(
                //   "Home",
                //   style: AppTextStyles.headerTextStyle(),
                // ),
                // const SizedBox(width: 30),
                // Text(
                //   "About",
                //   style: AppTextStyles.headerTextStyle(),
                // ),
                // const SizedBox(width: 30),
                // Text(
                //   "Services",
                //   style: AppTextStyles.headerTextStyle(),
                // ),
                // const SizedBox(width: 30),
                // Text(
                //   "Portfolio",
                //   style: AppTextStyles.headerTextStyle(),
                // ),
                // const SizedBox(width: 30),
                // Text(
                //   "Contact",
                //   style: AppTextStyles.headerTextStyle(),
                // ),
                // const SizedBox(width: 30),
              ],
            ), //nav row
          )),
      body: SingleChildScrollView(
        padding: EdgeInsets.only(
          top: size.height * 0.05,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.symmetric(
                  vertical: 30, horizontal: size.width * 0.1),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    // mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      FadeInDown(
                        duration: const Duration(milliseconds: 1200),
                        child: Text(
                          "Hello, It's me",
                          style: AppTextStyles.montserratStyle(
                              color: Colors.white),
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
                        duration: const Duration(milliseconds: 1600),
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
                        duration: const Duration(milliseconds: 1600),
                        child: Row(
                          children: [
                            buildSocialButton(asset: AppAssets.github,hover: true),
                            Constants.sizedBox(width: 12),
                            buildSocialButton(asset: AppAssets.linkedin,hover: false),
                            Constants.sizedBox(width: 12),
                            buildSocialButton(asset: AppAssets.instagram,hover: false),
                            Constants.sizedBox(width: 12),
                            buildSocialButton(asset: AppAssets.thread,hover: false),
                            Constants.sizedBox(width: 12),
                          ],
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
                  ),
                  const ProfileAnimation(),
                ],
              ),
            ),
            const SizedBox(
              height: 220,
            ),
            const AboutMe(),
            const MyServices(),
            const MyPortfolio(),
            const ContactUs(),
            const FooterClass(),
          ],
        ),
      ),
    );
  }

  AnimatedContainer buildNavBarAnimatedContainer(int index, bool hover) {
    return AnimatedContainer(
      alignment: Alignment.center,
      width: hover ? 80 : 75,
      duration: const Duration(milliseconds: 200),
      transform: hover ? onMenuHover : null,
      child: Text(
        menuItems[index],
        style: AppTextStyles.headerTextStyle(
            color: hover ? AppColors.themeColor : AppColors.white),
      ),
    );
  }

  Ink buildSocialButton({required String asset,required bool hover}) {
    return Ink(
      width: 45,
      height: 45,
      decoration: BoxDecoration(
        border: Border.all(color: AppColors.bgColor, width: 3),
        color: AppColors.bgColor,
        shape: BoxShape.circle,
      ),
      padding: const EdgeInsets.all(6),
      child: Image.asset(
        asset,
        width: 32,
        height: 30,
        color: hover?AppColors.bgColor:AppColors.themeColor,
        fit: BoxFit.fill,
        
      ),
      
    );
  }
}
