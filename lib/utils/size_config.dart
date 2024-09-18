import 'package:flutter/cupertino.dart';

class SizeConfig{
  //breakpoints
  static const double tablet=800;
  static const double desktop=1200;

  //device dimensions
  static  late double width;
  static  late double height;

  //init device dimensions value by context
  static init (BuildContext context){
    width=MediaQuery.sizeOf(context).width;
    height=MediaQuery.sizeOf(context).height;
    //use it with  mobile and tablets only not desktop or web
  }

}