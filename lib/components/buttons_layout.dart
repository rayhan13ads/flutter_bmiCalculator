import 'package:bmicalculator/themes/color.dart';
import 'package:bmicalculator/themes/styles.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ButtonsLayout extends StatelessWidget {
  final String title;
  final String value;
  final Function onAddPres;
  final Function onMinusPres;
  ButtonsLayout({this.title, this.value, this.onAddPres, this.onMinusPres});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Text("$title", style: kNormalTextStyle()),
        Text("$value", style: kBigTextStyle()),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            RawMaterialButton(
              shape: CircleBorder(),
              elevation: 5.0,
              constraints: BoxConstraints.tightFor(width: 56.0, height: 56.0),
              fillColor: inactiveColor,
              onPressed: onMinusPres ,
              child: Icon(FontAwesomeIcons.minus, color: Colors.white, size: 15.0,),
            ),
            SizedBox(
              width: 10,
            ),
            RawMaterialButton(
              shape: CircleBorder(),
              elevation: 5.0,
              constraints: BoxConstraints.tightFor(width: 56.0, height: 56.0),
              fillColor: inactiveColor,
              onPressed: onAddPres ,
              child: Icon(FontAwesomeIcons.plus, color: Colors.white, size: 15.0,),
            ),
          ],
        )
      ],
    );
  }
}
