import 'package:flutter/material.dart';

abstract class AppStyles{
  static TextStyle styleRegular16(BuildContext context) => TextStyle(
    color: const Color(0xff064060),
    fontSize: getResponsiveFontSize(context, fontSize: 16),
    fontFamily: 'Montserrat',
    fontWeight: FontWeight.w400,
  );

  static TextStyle styleMedium16(BuildContext context) => TextStyle(
      color: const Color  (0xff064060),
      fontSize: getResponsiveFontSize(context, fontSize: 16),
      fontFamily: 'Montserrat',
      fontWeight: FontWeight.w500,
  );

  static TextStyle styleSemiBold16(BuildContext context) => TextStyle(
      color: const Color(0xff064060),
      fontSize: getResponsiveFontSize(context, fontSize: 16),
      fontFamily: 'Montserrat',
      fontWeight: FontWeight.w600,
  );

  static TextStyle styleSemiBold20(BuildContext context) => TextStyle(
      color: const Color(0xff064060),
      fontSize: getResponsiveFontSize(context, fontSize: 20),
      fontFamily: 'Montserrat',
      fontWeight: FontWeight.w600,
  );

  static TextStyle styleRegular12(BuildContext context) => TextStyle(
      color: const Color(0xffaaaaaa),
      fontSize: getResponsiveFontSize(context,fontSize: 12),
      fontFamily: 'Montserrat',
      fontWeight: FontWeight.w400,
      height: 0
  );

  static TextStyle styleSemiBold24(BuildContext context) => TextStyle(
      color: const Color(0xff4eb7f2),
      fontSize: getResponsiveFontSize(context, fontSize: 24),
      fontFamily: 'Montserrat',
      fontWeight: FontWeight.w600,
  );

  static TextStyle styleRegular14(BuildContext context) => TextStyle(
      color: const Color(0xffaaaaaa),
      fontSize: getResponsiveFontSize(context,fontSize: 14),
      fontFamily: 'Montserrat',
      fontWeight: FontWeight.w400,
  );

  static TextStyle styleSemiBold18(BuildContext context) => TextStyle(
      color: const Color(0xffffffff),
      fontSize: getResponsiveFontSize(context, fontSize: 18),
      fontFamily: 'Montserrat',
      fontWeight: FontWeight.w600,
  );
  static TextStyle styleBold16(BuildContext context) => TextStyle(
      color: const Color(0xff4eb7f2),
      fontSize: getResponsiveFontSize(context,fontSize: 16),
      fontFamily: 'Montserrat',
      fontWeight: FontWeight.w700,
  );
  static TextStyle styleMedium20(BuildContext context) =>TextStyle(
      color: const Color(0xffffffff),
      fontSize: getResponsiveFontSize(context,fontSize: 20),
      fontFamily: 'Montserrat',
      fontWeight: FontWeight.w500,
    );


}

double getResponsiveFontSize(BuildContext context,{required double fontSize}){
  double scaleFactor = getScaleFactor(context);

  double responsiveFontSize = scaleFactor * fontSize;

  double lowerLimit = fontSize * .8;
  double upperLimit = fontSize * 1.2;
  // (min,max) fontSize
  responsiveFontSize.clamp(lowerLimit, upperLimit);

  return responsiveFontSize;
}

double getScaleFactor(BuildContext context){
  // هذا الحل لا يحتاج إلي context ولكنه مناسب فقط في حالة إن كان البرنامج هيشتغل علي موبايل أو تابلت فقط
  // var dispatcher = PlatformDispatcher.instance;
  // var  physicalWidth = dispatcher.views.first.physicalSize.width;
  // var devicePixelRatio = dispatcher.views.first.devicePixelRatio;
  // double width = physicalWidth / devicePixelRatio;
  double width = MediaQuery.sizeOf(context).width;

  if (width < 800) {
    return width / 500;
  } else if (width < 1200){
    return width / 900;
  }
  else{
    return width / 1500;
  }
}
