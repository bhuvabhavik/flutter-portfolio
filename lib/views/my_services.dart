import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:my_portfolio_webapp_1/globals/app_buttons.dart';
import 'package:my_portfolio_webapp_1/globals/app_colors.dart';
import 'package:my_portfolio_webapp_1/globals/constants.dart';
import 'package:my_portfolio_webapp_1/helper_class/helper_class.dart';

import '../globals/app_assets.dart';
import '../globals/app_text_styles.dart';

class MyServices extends StatefulWidget {
  const MyServices({super.key});

  @override
  State<MyServices> createState() => _MyServicesState();
}

class _MyServicesState extends State<MyServices> {
  bool isApp = false, isWeb = false, isVideo = false;
  final onHoverActive = Matrix4.identity()..translate(0, -10.0);
  final onHoverRemove = Matrix4.identity()..translate(0, 0.0);

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return  HelperClass(
          mobile: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              buildMyServicesText(),
              Constants.sizedBox(height: 60),
              InkWell(
                  onTap: () {},
                  onHover: (value) {
                    setState(() {
                      isApp = value;
                    });
                  },
                  child: buildAnimatedContainer(
                    title: 'App Development',
                    asset: AppAssets.codingImg,
                    hover: isApp,

                  )),
              Constants.sizedBox(height: 24),
              InkWell(
                  onTap: () {},
                  onHover: (value) {
                    setState(() {
                      isWeb = value;
                    });
                  },
                  child: buildAnimatedContainer(
                    title: 'Web Development',
                    asset: AppAssets.codingImg,
                    hover: isWeb,
                  )),
              Constants.sizedBox(height: 24),
              InkWell(
                  onTap: () {},
                  onHover: (value) {
                    setState(() {
                      isVideo = value;
                    });
                  },
                  child: buildAnimatedContainer(
                    title: 'Video Editing',
                    asset: AppAssets.videoEditorImg,
                    hover: isVideo,
                  ))
            ],
          ),
          tablet: Column(
            children: [
              buildMyServicesText(),
              Constants.sizedBox(height: 60),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  InkWell(
                      onTap: () {},
                      onHover: (value) {
                        setState(() {
                          isApp = value;
                        });
                      },
                      child: buildAnimatedContainer(
                        title: 'App Development',
                        asset: AppAssets.codingImg,
                        hover: isApp,
                      )),
                  Constants.sizedBox(width: 24),
                  InkWell(
                      onTap: () {},
                      onHover: (value) {
                        setState(() {
                          isWeb = value;
                        });
                      },
                      child: buildAnimatedContainer(
                        title: 'Web Development',
                        asset: AppAssets.codingImg,
                        hover: isWeb,
                      )),
                ],
              ),
              Constants.sizedBox(width: 26),
              InkWell(
                  onTap: () {},
                  onHover: (value) {
                    setState(() {
                      isVideo = value;
                    });
                  },
                  child: buildAnimatedContainer(
                    title: 'Video Editing',
                    asset: AppAssets.videoEditorImg,
                    hover: isVideo,
                    width: 725,
                    hoverWidth: 735,
                  )),
            ],
          ),
          desktop: Column(
            children: [
              buildMyServicesText(),
              Constants.sizedBox(height: 60),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  InkWell(
                      onTap: () {},
                      onHover: (value) {
                        setState(() {
                          isApp = value;
                        });
                      },
                      child: buildAnimatedContainer(
                        title: 'App Development',
                        asset: AppAssets.codingImg,
                        hover: isApp,
                      )),
                  Constants.sizedBox(width: 24),
                  InkWell(
                      onTap: () {},
                      onHover: (value) {
                        setState(() {
                          isWeb = value;
                        });
                      },
                      child: buildAnimatedContainer(
                        title: 'Web Development',
                        asset: AppAssets.codingImg,
                        hover: isWeb,
                      )),
                  Constants.sizedBox(width: 24),
                  InkWell(
                      onTap: () {},
                      onHover: (value) {
                        setState(() {
                          isVideo = value;
                        });
                      },
                      child: buildAnimatedContainer(
                        title: 'Video Editing',
                        asset: AppAssets.videoEditorImg,
                        hover: isVideo,
                      )),
                ],
              )
            ],
          ),
          paddingWidth: size.width * 0.04,
          bgColor: AppColors.bgColor,
        );
  }

  FadeInDown buildMyServicesText() {
    return FadeInDown(
        duration: const Duration(milliseconds: 1200),
        child: RichText(
          text: TextSpan(
              text: "My ",
              style: AppTextStyles.headingStyles(fontSize: 30),
              children: [
                TextSpan(
                    text: 'Services ',
                    style: AppTextStyles.headingStyles(
                        fontSize: 30, color: AppColors.robinEdgeBlue))
              ]),
        ));
  }

  AnimatedContainer buildAnimatedContainer({
    required String title,
    required String asset,
    required bool hover,
    double width = 350,
    double hoverWidth = 360,
  }) {
    return AnimatedContainer(
      width: hover ? hoverWidth : width,
      height: hover ? 390 : 380,
      alignment: Alignment.center,
      transform: hover ? onHoverActive : onHoverRemove,
      padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 24),
      decoration: BoxDecoration(
        border: hover ? Border.all(color: AppColors.aqua, width: 3) : null,
        color: AppColors.bgColor2,
        borderRadius: BorderRadius.circular(30),
        boxShadow: const [
          BoxShadow(
            color: Colors.black54,
            spreadRadius: 4.0,
            blurRadius: 4.5,
            offset: Offset(3.0, 4.5),
          )
        ],
      ),
      duration: const Duration(
        milliseconds: 600,
      ),
      child: Column(
        children: [
          Image.asset(
            asset,
            color: AppColors.aqua,
            height: 50,
            width: 50,
          ),
          Constants.sizedBox(height: 30),
          Text(
            title,
            style: AppTextStyles.montserratStyle(
                color: Colors.white, fontsize: 22),
          ),
          Constants.sizedBox(height: 12),
          Text(
            "App Development i create beautiful cross platform stusnning mobile apps and web apps using google flutter",
            style: AppTextStyles.normalStyle(fontSize: 14),
            textAlign: TextAlign.center,
          ),
          Constants.sizedBox(height: 20),
          AppButtons.buildMaterialButton(
            onTap: () {},
            buttonName: "Read More",
          ),
        ],
      ),
    );
  }
}
