import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'app_colors.dart';

class DarkTextColors {
  static final _headline1 = GoogleFonts.poppins(
    color: DarkColors.highlight,
    fontSize: 20,
    fontWeight: FontWeight.w600,
  );

  static final _headline2 = GoogleFonts.poppins(
    color: DarkColors.highlight,
    fontSize: 16,
    fontWeight: FontWeight.w600,
  );

  static final _bodyText2 = GoogleFonts.montserrat(
    fontSize: 14,
    fontWeight: FontWeight.w400,
    color: DarkColors.description,
  );

  static final _description = GoogleFonts.montserrat(
    fontSize: 12,
    fontWeight: FontWeight.w500,
    color: DarkColors.description,
  );

  static final _overline = GoogleFonts.poppins(
    fontSize: 12,
    fontWeight: FontWeight.w500,
    color: DarkColors.highlight,
  );

  static final textTheme = TextTheme(
    headline6: _headline1,
    subtitle1: _headline2,
    bodyText2: _bodyText2,
    caption: _description,
    overline: _overline,
  );
}

class LightTextColors {
  static final _headline1 = GoogleFonts.poppins(
    color: LightColors.description,
    fontSize: 20,
    fontWeight: FontWeight.w600,
  );

  static final _headline2 = GoogleFonts.poppins(
    color: LightColors.description,
    fontSize: 16,
    fontWeight: FontWeight.w600,
  );

  static final _bodyText2 = GoogleFonts.montserrat(
    fontSize: 14,
    fontWeight: FontWeight.w400,
    color: LightColors.highlight,
  );

  static final _description = GoogleFonts.montserrat(
    fontSize: 12,
    fontWeight: FontWeight.w500,
    color: LightColors.description,
  );

  static final _overline = GoogleFonts.poppins(
    fontSize: 12,
    fontWeight: FontWeight.w500,
    color: LightColors.description,
  );

  static final textTheme = TextTheme(
    headline6: _headline1,
    subtitle1: _headline2,
    bodyText2: _bodyText2,
    caption: _description,
    overline: _overline,
  );
}
