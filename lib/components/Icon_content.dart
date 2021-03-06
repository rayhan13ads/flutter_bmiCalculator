import 'package:bmicalculator/themes/styles.dart';
import 'package:flutter/material.dart';

  class IconContent extends StatelessWidget {
    final IconData icon;
    final String title;

    IconContent({this.title, this.icon});

    @override
    Widget build(BuildContext context) {
      return Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Icon(
           icon,
            size: 80.0,
          ),
          SizedBox(
            height: 15.0,
          ),
          Text(title, style: kNormalTextStyle(),)

        ],
      );
    }
  }
