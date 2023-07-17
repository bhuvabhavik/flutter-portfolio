import 'package:flutter/material.dart';
import 'package:my_portfolio_webapp_1/globals/app_colors.dart';
import 'package:my_portfolio_webapp_1/globals/app_text_styles.dart';
import 'package:my_portfolio_webapp_1/globals/constants.dart';

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
            ),
          )),

      body: SingleChildScrollView(
        padding: EdgeInsets.only(top: size.height*0.3,left: size.width*0.2,right:size.width*0.2),
        child: Column(
          children: [
            Row(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Hello, It\'s me",style: AppTextStyles.montserratStyle(),),
                    Constants.sizedBox(height: 15),
                    Text("Bhavik Bhuva",style: AppTextStyles.headingStyles(),),
                    Constants.sizedBox(height: 15),
                    Text("I\'m a Flutter Developer",style: AppTextStyles.montserratStyle(),),
                  ],
                ),

              ],
            )
          ],
        ),
      ),
    );
  }
}
