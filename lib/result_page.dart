
import 'package:bmi_calculator/constant.dart';
import 'package:bmi_calculator/reusable_card.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ResultPage extends StatelessWidget {
  var mbiResult;
  var resultText;
  var resultInterpretation;
ResultPage({this.mbiResult,this.resultText,this.resultInterpretation});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("BMI Calculator"),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: Container(
              padding: EdgeInsets.all(10),
              child: Text(
                "Your Result",
                style: KTitleTextStyle,
              ),
            ),
          ),
          Expanded(
            flex: 5,
            child: ReusableCard(
              culor: Colors.grey,
              cardChild: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(height: 100,),
                  Text(
                    resultText,
                    style: KResultTextStyle,
                  ),
                  Text(
                    mbiResult,
                    style: KBMITextStyle,
                  ),
                  Text(resultInterpretation , style: KBodyTextStyle,
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: GestureDetector(
              onTap: (){
                Navigator.pop(context);
              },
              child: Container(
                child: Center(
                  child: Text(
                    "RE_Calculate",
                    style: KLargeButtonTextStyle,
                  ),
                ),
                color: Color(0xffEB1555),
                margin: EdgeInsets.only(top: 10.0),
                width: double.infinity,
                height: 80.0,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
