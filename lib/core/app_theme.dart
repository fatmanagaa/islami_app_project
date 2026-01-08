import 'package:flutter/material.dart';
import 'package:islami_app/core/app_colors.dart';

class AppTheme {
static ThemeData darkTheme= ThemeData(
  scaffoldBackgroundColor:AppColors.transparent,
  bottomNavigationBarTheme: BottomNavigationBarThemeData(
    selectedItemColor: AppColors.white,
   unselectedItemColor: AppColors.black
  )

);

}
