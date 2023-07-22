import 'package:flutter/material.dart';

import 'app_colors.dart';
import 'app_text_styles.dart';

class AppButtons{

 static MaterialButton buildMaterialButton({
    required VoidCallback onTap,
   required String buttonName,
  }) {
    return MaterialButton(
      padding: EdgeInsets.symmetric(horizontal: 18, vertical: 10),
      shape: OutlineInputBorder(
        borderRadius: BorderRadius.circular(30),
        borderSide: BorderSide.none,
      ),
      height: 46,
      minWidth: 130,
      elevation: 6,
      focusElevation: 12,
      splashColor: AppColors.lawGreen,
      hoverColor: AppColors.aqua,
      color: AppColors.themeColor,
      onPressed: onTap,
      child: Text(
        buttonName ,
        style: AppTextStyles.headerTextStyle(),
      ),
    );
  }
}