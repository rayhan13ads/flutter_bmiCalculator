import 'package:bmicalculator/themes/color.dart';
import 'package:flutter/material.dart';

TextStyle kNormalTextStyle(){
  return TextStyle(
      fontSize: 18.0,
      color: Color(0xFF8D8E98)
  );
}

TextStyle kBigTextStyle(){
  return TextStyle(
      fontSize: 50.0,
      fontWeight: FontWeight.w900
  );
}

TextStyle kCalculateTextStyle(){
  return TextStyle(
      fontSize: 25.0,
      color: Colors.white,
      fontWeight: FontWeight.bold
  );
}

TextStyle kResultTitleTextStyle(){
  return TextStyle(
      fontSize: 50.0,
      fontWeight: FontWeight.bold
  );
}

TextStyle kResultBodyTextStyle(){
  return TextStyle(
       color: resultTextColor,
      fontSize: 22.0,
      fontWeight: FontWeight.bold
  );
}

TextStyle kResultBigTextStyle(){
  return TextStyle(
       color: resultTextColor,
      fontSize: 100.0,
      fontWeight: FontWeight.bold
  );
}