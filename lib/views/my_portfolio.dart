
import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:my_portfolio_webapp_1/globals/app_assets.dart';

import '../globals/app_colors.dart';
import '../globals/app_text_styles.dart';
import '../globals/constants.dart';

class MyPortfolio extends StatefulWidget {
  const MyPortfolio({super.key});

  @override
  State<MyPortfolio> createState() => _MyPortfolioState();
}

class _MyPortfolioState extends State<MyPortfolio> {

  final onHoverEffect = Matrix4.identity()..scale(1.0);

  List images = <String>[
    AppAssets.profile1,
    AppAssets.graphicsImg,
    AppAssets.graphicsImg,
    AppAssets.graphicsImg,
    AppAssets.graphicsImg,
    AppAssets.graphicsImg,
  ];

  var hoveredIndex;

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Container(
      width: size.width,
      height: size.height,
      color: AppColors.bgColor2,
      alignment: Alignment.center,
      padding: EdgeInsets.symmetric(vertical: 30, horizontal: size.width * 0.1),
      child: Column(
        children: [
          FadeInDown(
              duration: const Duration(milliseconds: 1200),
              child: RichText(
                text: TextSpan(
                    text: "Latest ",
                    style: AppTextStyles.headingStyles(fontSize: 30),
                    children: [
                      TextSpan(
                          text: 'Projects ',
                          style: AppTextStyles.headingStyles(
                              fontSize: 30, color: AppColors.robinEdgeBlue))
                    ]),
              )),
          Constants.sizedBox(height: 40),
          GridView.builder(
            itemCount: images.length,
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3,
              mainAxisExtent: 280,
              mainAxisSpacing: 24,
              crossAxisSpacing: 24,
            ),
            itemBuilder: (context, index) {
              var image = images[index];
              return FadeInUpBig(
                duration: const Duration(milliseconds: 1600,),
                child: InkWell(
                  onTap: (){

                  },
                  onHover: (value){
                      setState(() {
                        if(value){
                          hoveredIndex = index;
                        }else{
                          hoveredIndex = null;
                        }
                      });




                  },
                  child: Stack(children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(20),
                      child: Image(
                        image: AssetImage(image),
                        fit: BoxFit.fill,
                      ),
                    ),
                    Visibility(
                      visible: index == hoveredIndex,
                      child: AnimatedContainer(
                        padding:const EdgeInsets.symmetric(horizontal: 14,vertical: 16),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          gradient: LinearGradient(colors: [
                            AppColors.themeColor.withOpacity(0.3),
                            AppColors.themeColor.withOpacity(0.6),
                            AppColors.themeColor.withOpacity(0.6),
                            AppColors.themeColor.withOpacity(0.8),
                          ], begin: Alignment.bottomCenter, end: Alignment.topCenter),
                        ),
                        duration: Duration(milliseconds: 300),
                        transform: index == hoveredIndex ? onHoverEffect : null  ,
                        child: Column(
                          children: [
                            Text(
                              'App Development',
                              style: AppTextStyles.montserratStyle(
                                  color: Colors.black87, fontsize: 20),
                            ),
                            Constants.sizedBox(height: 15),
                            Text(
                              'App Development is the basic i am the pro level app developer you can hire me anytime anywhre in the world',
                              style: AppTextStyles.normalStyle(
                                  color: Colors.black87,),
                              textAlign: TextAlign.center,

                            ),
                            Constants.sizedBox(height: 30),
                          CircleAvatar(
                            backgroundColor: Colors.white,
                            child: Image.asset(AppAssets.shareImg,height: 25,width: 25,),
                          )
                          ],
                        ),
                      ),
                    )
                  ]),
                ),
              );
            },
          )
        ],
      ),
    );
  }
}
