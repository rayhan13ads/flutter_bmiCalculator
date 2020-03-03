import 'package:bmicalculator/components/rounded_card.dart';
import 'package:bmicalculator/themes/color.dart';
import 'package:bmicalculator/themes/styles.dart';
import 'package:flutter/material.dart';

class ResultPage extends StatefulWidget {

  final String bmi;
  final String result;
  final String interpretation;

  ResultPage({this.bmi, this.interpretation, this.result});

  @override
  _ResultPageState createState() => _ResultPageState();
}

class _ResultPageState extends State<ResultPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text("Bmi Calculator"),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Expanded(
                child:Container(
                  child: Text('Your Result', style: kResultTitleTextStyle(),
                    ),
                  )
            ),
            Expanded(
              flex: 5,
              child: RoundedCard(
                color: activeColor,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Text(widget.result, style: kResultBodyTextStyle(),),
                    Text(widget.bmi,style: kResultBigTextStyle(),),
                    Text(widget.interpretation,style: kNormalTextStyle(),textAlign: TextAlign.center,)

                  ],
                ),
              ),
            ),
            GestureDetector(
              onTap: (){
                Navigator.pop(context);
              },
              child: Container(
                color:sliderActiveColor,
                margin: EdgeInsets.only(top: 10.0),
                width: double.infinity,
                height: 80.0,
                child: Center(child: Text(" Re-Calculate", style: kCalculateTextStyle(),)),
              ),
            )
          ],
        ),
      ),
    );
  }
}
