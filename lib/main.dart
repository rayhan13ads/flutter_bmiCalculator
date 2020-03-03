import 'package:bmicalculator/pages/HomePage.dart';
import 'package:bmicalculator/themes/bmiTheme.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'BMI Calculator',
      debugShowCheckedModeBanner: false,
      theme: bmiThemeData(),
      home: HomePage(),
    );
  }
}

