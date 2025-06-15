import 'package:flutter/material.dart';
import 'package:responsive_admin_dashboard/functions/get_responsive_fontSize.dart';

abstract class AppStyles {
  static TextStyle styleRegular16(context) {
    return TextStyle(
      color: Color(0xff064060),
      fontSize: getResponsiveFontSize(context, fontSize: 16),
      fontFamily: 'Montserrat',
      fontWeight: FontWeight.w400,
      height: 0,
    );
  }

  static TextStyle styleMedium16(context) {
    return TextStyle(
      color: Color(0xff064060),
      fontSize: getResponsiveFontSize(context, fontSize: 16),
      fontFamily: 'Montserrat',
      fontWeight: FontWeight.w500,
      height: 0,
    );
  }

  static TextStyle styleSemiBold16(context) {
    return TextStyle(
      color: Color(0xff064060),
      fontSize: getResponsiveFontSize(context, fontSize: 16),
      fontFamily: 'Montserrat',
      fontWeight: FontWeight.w600,
      height: 0,
    );
  }

  static TextStyle styleSemiBold20(context) {
    return TextStyle(
      color: Color(0xff064060),
      fontSize: getResponsiveFontSize(context,fontSize: 20),
      fontFamily: 'Montserrat',
      fontWeight: FontWeight.w600,
      height: 0,
    );
  }

  static TextStyle styleRegular12(context) {
    return TextStyle(
      color: Color(0xffAAAAAA),
      fontSize: getResponsiveFontSize(context, fontSize: 12),
      fontFamily: 'Montserrat',
      fontWeight: FontWeight.w400,
      height: 0,
    );
  }

  static TextStyle styleSemiBold24(context) {
    return TextStyle(
      color: Color(0xff4EB7F2),
      fontSize: getResponsiveFontSize(context, fontSize: 24),
      fontFamily: 'Montserrat',
      fontWeight: FontWeight.w600,
      height: 0,
    );
  }

  static TextStyle styleRegular14(context) {
    return TextStyle(
      color: Color(0xffAAAAAA),
      fontSize: getResponsiveFontSize(context, fontSize: 14),
      fontFamily: 'Montserrat',
      fontWeight: FontWeight.w400,
      height: 0,
    );
  }

  static TextStyle styleSemiBold18(context) {
    return TextStyle(
      color: Color(0xffFFFFFF),
      fontSize: getResponsiveFontSize(context, fontSize: 18),
      fontFamily: 'Montserrat',
      fontWeight: FontWeight.w600,
      height: 0,
    );
  }

  static TextStyle styleBold16(context) {
    return TextStyle(
      color: Color(0xff4EB7F2),
      fontSize: getResponsiveFontSize(context, fontSize: 16),
      fontFamily: 'Montserrat',
      fontWeight: FontWeight.w700,
      height: 0,
    );
  }

  static TextStyle styleMedium20(context) {
    return TextStyle(
      color: Color(0xffFFFFFF),
      fontSize: getResponsiveFontSize(context, fontSize: 20),
      fontFamily: 'Montserrat',
      fontWeight: FontWeight.w500,
      height: 0,
    );
  }
}
