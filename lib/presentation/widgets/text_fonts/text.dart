import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TextStyles {
  static TextStyle medium(BuildContext context) => GoogleFonts.inter(
        fontSize: 14,
        fontWeight: FontWeight.w400,
        color: Theme.of(context).hintColor,
      );
  static TextStyle medium3(BuildContext context) => GoogleFonts.inter(
        fontSize: 14,
        fontWeight: FontWeight.w400,
        color: Theme.of(context).canvasColor,
      );
  static TextStyle medium5(BuildContext context) => GoogleFonts.inter(
        fontSize: 14,
        fontWeight: FontWeight.w400,
        color: Theme.of(context).secondaryHeaderColor,
      );
  static TextStyle medium6(BuildContext context) => GoogleFonts.inter(
        fontSize: 14,
        fontWeight: FontWeight.w400,
        color: Colors.red,
      );
  static TextStyle medium2(BuildContext context) => GoogleFonts.inter(
        fontSize: 14,
        fontWeight: FontWeight.w500,
        color: Theme.of(context).hoverColor,
      );
  static TextStyle medium4(BuildContext context) => GoogleFonts.inter(
        fontSize: 14,
        fontWeight: FontWeight.w500,
        color: Theme.of(context).primaryColor,
      );
  static TextStyle bigtext2(BuildContext context) => GoogleFonts.inter(
        fontSize: 18,
        fontWeight: FontWeight.w500,
        color: Theme.of(context).scaffoldBackgroundColor,
      );

  static TextStyle bigtext(BuildContext context) => GoogleFonts.inter(
        fontSize: 24,
        fontWeight: FontWeight.w600,
        color: Theme.of(context).primaryColor,
      );
  static TextStyle bigtext3(BuildContext context) => GoogleFonts.inter(
        fontSize: 16,
        fontWeight: FontWeight.w600,
        color: Theme.of(context).canvasColor,
      );
  static TextStyle bigtext4(BuildContext context) => GoogleFonts.inter(
        fontSize: 16,
        fontWeight: FontWeight.w400,
        color: Theme.of(context).hintColor,
      );
}
