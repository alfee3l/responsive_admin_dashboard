import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:responsive_admin_dashboard/utils/size_config.dart';

double getResponsiveFontSize(context,{required double fontSize}){
  double scaleFactor = getScaleFactor(context);
  double responsiveFontSize=fontSize*scaleFactor;
  double lowerLimit = fontSize*.8;
  double upperLimit = fontSize*1.2;
  return responsiveFontSize.clamp(lowerLimit, upperLimit);
}

double getScaleFactor(context ) {

//  var dispatcher= PlatformDispatcher.instance;
//  var physicalWidth=dispatcher.views.first.physicalSize.width;
//  var devicePixelRatio= dispatcher.views.first.devicePixelRatio;
//  double width = physicalWidth/ ;
double width = MediaQuery.sizeOf(context).width;
  if(width<SizeConfig.tablet){
    return width/555  ;
  }else if(width <SizeConfig.desktop){
    return width/1000;
  }else{
    return width/ 1920;
  } 
}