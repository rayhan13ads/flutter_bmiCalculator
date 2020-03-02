import 'package:bmicalculator/components/Icon_content.dart';
import 'package:bmicalculator/components/rounded_card.dart';
import 'package:bmicalculator/themes/color.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

enum Gender {
  male,
  female
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var selectGender;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Bmi Calculator"),
      ),

      body: SafeArea(
        child: Column(
          children: <Widget>[
            Expanded(child: Row(
              children: <Widget>[
                Expanded(child: GestureDetector(
                  onTap: (){
                    setState(() {
                      selectGender = Gender.male;
                    });
                  },
                  child: RoundedCard(
                    color: selectGender? activeColor : inactiveColor ,
                    child: IconContent(
                    title: "MALE",
                    icon: FontAwesomeIcons.mars,
                  ),),
                )),
                Expanded(child: GestureDetector(
                  onTap: (){
                    setState(() {
                      selectGender = Gender.female;
                    });
                  },
                  child: RoundedCard(
                    color: selectGender ? activeColor:inactiveColor,
                    child: IconContent(
                      title: "FEMALE",
                      icon: FontAwesomeIcons.venus,
                    ),
                  ),
                ))
              ],
              )
            ),
            Expanded(child: RoundedCard()),
            Expanded(child: Row(
              children: <Widget>[
                Expanded(child: RoundedCard()),
                Expanded(child: RoundedCard())
              ],
              )
            ),
            Container(
              color: Color(0xFFEB18555),
              margin: EdgeInsets.only(top: 10.0),
              width: double.infinity,
              height: 80.0,
            )
          ],
        ),
      ),
    );
   }
}
