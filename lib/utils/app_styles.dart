import 'dart:ui';

import 'package:admin_dashboard/utils/size_config.dart';
import 'package:flutter/material.dart';

abstract class AppStyles{

  static TextStyle styleRegular16(context)=>TextStyle(
    color:  const Color(0xFF064060),
    fontSize: getResponsiveFontSize(context,fontSize: 16),
    fontFamily: 'Montserrat',
    fontWeight: FontWeight.w400,
  );

  static TextStyle styleBold16(BuildContext context) => TextStyle(
    color: const Color(0xFF4EB7F2),
    fontSize: getResponsiveFontSize(context, fontSize: 16),
    fontFamily: 'Montserrat',
    fontWeight: FontWeight.w700,
  );

  static TextStyle styleMedium16(BuildContext context) => TextStyle(
    color: const Color(0xFF064061),
    fontSize: getResponsiveFontSize(context, fontSize: 16),
    fontFamily: 'Montserrat',
    fontWeight: FontWeight.w500,
  );

  static TextStyle styleMedium20(BuildContext context) => TextStyle(
    color: const Color(0xFFFFFFFF),
    fontSize: getResponsiveFontSize(context, fontSize: 20),
    fontFamily: 'Montserrat',
    fontWeight: FontWeight.w500,
  );

  static TextStyle styleSemiBold16(BuildContext context) => TextStyle(
    color: const Color(0xFF064060),
    fontSize: getResponsiveFontSize(context, fontSize: 16),
    fontFamily: 'Montserrat',
    fontWeight: FontWeight.w600,
  );

  static TextStyle styleSemiBold20(BuildContext context) => TextStyle(
    color: const Color(0xFF064060),
    fontSize: getResponsiveFontSize(context, fontSize: 20),
    fontFamily: 'Montserrat',
    fontWeight: FontWeight.w600,
  );

  static TextStyle styleRegular12(BuildContext context) => TextStyle(
    color: const Color(0xFFAAAAAA),
    fontSize: getResponsiveFontSize(context, fontSize: 12),
    fontFamily: 'Montserrat',
    fontWeight: FontWeight.w400,
  );

  static TextStyle styleSemiBold24(BuildContext context) => TextStyle(
    color: const Color(0xFF4EB7F2),
    fontSize: getResponsiveFontSize(context, fontSize: 24),
    fontFamily: 'Montserrat',
    fontWeight: FontWeight.w600,
  );

  static TextStyle styleRegular14(BuildContext context) => TextStyle(
    color: const Color(0xFFAAAAAA),
    fontSize: getResponsiveFontSize(context, fontSize: 14),
    fontFamily: 'Montserrat',
    fontWeight: FontWeight.w400,
  );

  static TextStyle styleSemiBold18(BuildContext context) => TextStyle(
    color: const Color(0xFFFFFFFF),
    fontSize: getResponsiveFontSize(context, fontSize: 18),
    fontFamily: 'Montserrat',
    fontWeight: FontWeight.w600,
  );
}

double getResponsiveFontSize(BuildContext context,{required double fontSize}){
  double scaleFactor =getScaleFactor(context);
  double responsiveFz= fontSize * scaleFactor;
  double lower=  fontSize * 0.8;
  double upper = fontSize * 1.2;
  double limits= responsiveFz.clamp(lower, upper);
  return limits;
}

double getScaleFactor(BuildContext context){
  // var dispatcher=PlatformDispatcher.instance;
  // var pWidth=dispatcher.views.first.physicalSize.width;
  // var devPR=dispatcher.views.first.devicePixelRatio;
  //
  // double width = pWidth / devPR; //MediaQuery Real Width

  double width = MediaQuery.sizeOf(context).width;
  if(width < SizeConfig.tablet){
    return width/550;
  }else if(width < SizeConfig.desktop){
    return width/1000;
  }else{
    return width/1920;
  }
}