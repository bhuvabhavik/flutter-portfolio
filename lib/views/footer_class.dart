import 'package:flutter/material.dart';

import '../globals/app_colors.dart';

class FooterClass extends StatelessWidget {
  const FooterClass({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70,
      width: MediaQuery.of(context).size.width,
      alignment: Alignment.centerRight,
      color: AppColors.bgColor2,
      padding: EdgeInsets.symmetric(horizontal: 40),
      child: InkWell(
        onTap: (){},
        onHover: (value){

        },
        child: Container(
          height: 40,
          width: 40,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: AppColors.themeColor,
          ),
          child: const Icon(
            Icons.arrow_upward,
            size: 25,
            color: Colors.black,
          ),
        ),
      ),
    );
  }
}
