import 'package:appmasterclass/app/shared/theme/app_colors.dart';
import 'package:appmasterclass/app/shared/theme/app_textstyle.dart';
import 'package:flutter/material.dart';

final darkTheme = ThemeData(
  brightness: Brightness.dark,
  scaffoldBackgroundColor: DarkColors.background,
  primaryColor: DarkColors.primaryColor,
  cardColor: DarkColors.cardColor,
  textTheme: DarkTextColors.textTheme,
  textButtonTheme: TextButtonThemeData(
    style: TextButton.styleFrom(
      padding: EdgeInsets.zero,
      textStyle: DarkTextColors.textTheme.caption,
      primary: DarkColors.highlight,
    ),
  ),
  cardTheme: CardTheme(
    color: DarkColors.cardColor,
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
      primary: DarkColors.primaryColor,
      textStyle: DarkTextColors.textTheme.bodyText2,
    ),
  ),
  dividerColor: DarkColors.description,
  iconTheme: IconThemeData(
    color: DarkColors.iconsSecondaryColor,
  ),
  primaryIconTheme: IconThemeData(
    color: DarkColors.iconsPrimaryColor,
  ),
);
