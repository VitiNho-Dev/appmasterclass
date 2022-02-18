import 'package:appmasterclass/app/shared/theme/app_colors.dart';
import 'package:appmasterclass/app/shared/theme/app_textstyle.dart';
import 'package:flutter/material.dart';

final lightTheme = ThemeData(
  brightness: Brightness.light,
  scaffoldBackgroundColor: LightColors.background,
  textTheme: LightTextColors.textTheme,
  primaryColor: LightColors.primaryColor,
  cardColor: LightColors.cardColor,
  textButtonTheme: TextButtonThemeData(
    style: TextButton.styleFrom(
      padding: EdgeInsets.zero,
      textStyle: LightTextColors.textTheme.caption,
      primary: LightColors.description,
    ),
  ),
  cardTheme: CardTheme(
    color: LightColors.cardColor,
    margin: EdgeInsets.symmetric(vertical: 8, horizontal: 14),
    elevation: 0,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(20),
    ),
  ),
  elevatedButtonTheme: ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      elevation: 0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20),
      ),
      primary: LightColors.primaryColor,
      textStyle: LightTextColors.textTheme.bodyText2,
    ),
  ),
  dividerColor: DarkColors.description,
  iconTheme: IconThemeData(
    color: LightColors.iconsSecondaryColor,
  ),
  primaryIconTheme: IconThemeData(
    color: LightColors.iconsPrimaryColor,
  ),
);
