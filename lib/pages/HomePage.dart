import 'package:bmicalculator/CalculateBrain.dart';
import 'package:bmicalculator/components/Icon_content.dart';
import 'package:bmicalculator/components/buttons_layout.dart';
import 'package:bmicalculator/components/rounded_card.dart';
import 'package:bmicalculator/pages/ResultPage.dart';
import 'package:bmicalculator/themes/color.dart';
import 'package:bmicalculator/themes/styles.dart';
import 'package:flutter/cupertino.dart';
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
  Gender selectGender;
  int height = 180;
  int weight = 74;
  int age = 20;

  Widget _sliderWidget(){
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Text('Height', style: kNormalTextStyle(),),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.baseline,
          textBaseline: TextBaseline.alphabetic,
          children: <Widget>[
            Text("$height", style: kBigTextStyle(),),
            Text("cm", style: kNormalTextStyle(),)
          ],
        ),
        SliderTheme(
          data: SliderTheme.of(context).copyWith(
            inactiveTrackColor: sliderInActiveColor,
            activeTrackColor: Colors.white,
            thumbColor: sliderActiveColor,
            overlayColor: sliderOverlayColor,
            thumbShape: RoundSliderThumbShape(enabledThumbRadius: 15.0),
            overlayShape: RoundSliderOverlayShape(overlayRadius: 30.0)
          ),
          child: Slider(
            value: height.toDouble(),
            max: 220.0,
            min: 120.0,
            onChanged: (double newValue){
              setState(() {
                height = newValue.round();
              });
            },
          ),
        )
      ],
    );
  }




  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Bmi Calculator"),
      ),

      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
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
                    color: selectGender == Gender.male? activeColor : inactiveColor ,
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
                    color: selectGender == Gender.female ? activeColor:inactiveColor,
                    child: IconContent(
                      title: "FEMALE",
                      icon: FontAwesomeIcons.venus,
                    ),
                  ),
                ))
              ],
              )
            ),
            Expanded(child: RoundedCard(
              color: activeColor,
              child: _sliderWidget(),
            )),
            Expanded(child: Row(
              children: <Widget>[
                Expanded(child: RoundedCard(
                  color: activeColor,
                  child: ButtonsLayout(
                    title: "Weight",
                    value: weight.toString(),
                    onAddPres: (){
                      setState(() {
                        weight++;
                      });

                    },
                    onMinusPres: (){
                      setState(() {
                        weight--;
                      });

                    },
                  ),
                )),
                Expanded(child: RoundedCard(
                  color: activeColor ,
                  child: ButtonsLayout(
                    title: "Age",
                    value: age.toString(),
                    onAddPres: (){
                      setState(() {
                        age++;
                      });

                    },
                    onMinusPres: (){
                      setState(() {
                        age--;
                      });

                    },
                  ),
                ))
              ],
              )
            ),
            GestureDetector(
              onTap: (){

                CalculateBrain calculate = CalculateBrain(height: height, weigth: weight);

                  Navigator.push(context,MaterialPageRoute(
                    builder: (context)=> ResultPage(
                      bmi: calculate.calculateBMI(),
                      interpretation: calculate.getInterpretation(),
                      result: calculate.getResult(),
                    )
                  ));
              },
              child: Container(
                color:sliderActiveColor,
                margin: EdgeInsets.only(top: 10.0),
                width: double.infinity,
                height: 80.0,
                child: Center(child: Text("Calculate", style: kCalculateTextStyle(),)),
              ),
            )
          ],
        ),
      ),
    );
   }
}
