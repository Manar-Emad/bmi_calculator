import 'dart:math';

import 'package:bmi_calculator/mbi_ressult.dart';
import 'package:bmi_calculator/result_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'calculator_brain.dart';
import 'constant.dart';

class BmiScreen extends StatefulWidget {
  @override
  _BmiScreenState createState() => _BmiScreenState();
}

class _BmiScreenState extends State<BmiScreen> {
  bool isMale = true;
  double height = 120.0;
  int age = 20;
  int weight = 40;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('BMI Calculator'),
      ),
      body: Column(
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Row(
                children: [
                  Expanded(
                    child: GestureDetector(
                      onTap: () {
                        setState(() {
                          isMale = true;
                        });
                      },
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: isMale ? Colors.blue : Colors.grey[400],
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image(
                              image: AssetImage('assets/images/male.jpg'),
                              height: 60,
                              width: 60,
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              'Male',
                              style: TextStyle(
                                  fontSize: 25, fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Expanded(
                    child: GestureDetector(
                      onTap: () {
                        setState(() {
                          isMale = false;
                        });
                      },
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: isMale ? Colors.grey[400] : Colors.blue,
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image(
                              image: AssetImage('assets/images/female.jpg'),
                              height: 60,
                              width: 60,
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              'Female',
                              style: TextStyle(
                                  fontSize: 25, fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10.0),
              child: Container(
                //color: Colors.grey,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.grey[400],
                  borderRadius: BorderRadius.circular(10.0),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'HIGHT',
                      style:
                          TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 5.0,
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.baseline,
                      mainAxisAlignment: MainAxisAlignment.center,
                      textBaseline: TextBaseline.alphabetic,
                      children: [
                        Text(
                          '${height.round()}',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 30),
                        ),
                        SizedBox(
                          width: 5.0,
                        ),
                        Text(
                          'CM',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 30),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 5.0,
                    ),
                    Slider(
                        value: height,
                        max: 220,
                        min: 80,
                        onChanged: (value) {
                          setState(() {
                            height = value;
                          });
                          //.round دي حطيتها عشان القيمة اللي تطلع تكون عدد صحيح مش كسور
                        }),
                  ],
                ),
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Row(
                children: [
                  Container(
                    child: Expanded(
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.0),
                          color: Colors.grey[400],
                        ),
                        child: Row(
                          children: [
                            Expanded(
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    'Age',
                                    style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  SizedBox(
                                    height: 5.0,
                                  ),
                                  Text(
                                    '$age',
                                    style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  SizedBox(),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      FloatingActionButton(
                                        heroTag: ('age--'),
                                        onPressed: () {
                                          setState(() {
                                            age--;
                                            print(age);
                                          });
                                        },
                                        mini: true,
                                        child: Icon(
                                          Icons.remove,
                                        ),
                                      ),
                                      SizedBox(
                                        width: 10.0,
                                      ),
                                      FloatingActionButton(
                                        heroTag: ('age++'),
                                        onPressed: () {
                                          setState(() {
                                            age++;
                                          });
                                        },
                                        mini: true,
                                        child: Icon(Icons.add),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Container(
                    child: Expanded(
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.0),
                          color: Colors.grey[400],
                        ),
                        child: Row(
                          children: [
                            Expanded(
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    'Weight',
                                    style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  SizedBox(
                                    height: 5.0,
                                  ),
                                  Text(
                                    '$weight',
                                    style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  SizedBox(),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      FloatingActionButton(
                                        heroTag: ('weight--'),
                                        onPressed: () {
                                          setState(() {
                                            weight--;
                                          });
                                        },
                                        mini: true,
                                        child: Icon(Icons.remove),
                                      ),
                                      SizedBox(
                                        width: 10.0,
                                      ),
                                      FloatingActionButton(
                                        heroTag: ('weight++'),
                                        onPressed: () {
                                          setState(() {
                                            weight++;
                                          });
                                        },
                                        mini: true,
                                        child: Icon(Icons.add),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              CalculatorBrain br =
                  new CalculatorBrain(weight: weight, height: height);
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return ResultPage(
                      mbiResult: br.calculateMBI(),
                      resultText: br.getResult(),
                      resultInterpretation: br.getInterpretation(),
                    );
                  },
                ),
              );
            },
            child: Container(
              child: Center(
                  child: Text(
                "Calculator",
                style: KLargeButtonTextStyle,
              )),
              color: Color(0xffFF6B6B),
              margin: EdgeInsets.only(top: 10.0),
              width: double.infinity,
              height: 80.0,
            ),
          ),
          // Container(
          //   child:
          //   MaterialButton(
          //     height: 50.0,
          //     color: Colors.blue,
          //     onPressed: () {
          //       double result= weight/pow(height/100,2);
          //       Navigator.push(
          //           context,
          //           MaterialPageRoute(
          //             builder: (context) {
          //
          //             builder: (context)=>
          //               BMIResultScreen(age: age,isMale: isMale,result: result.round(),),
          //           ),
          //       );
          //     },
          //     child: Text('calculate'),
          //   ),
          //   width: double.infinity,
          //   decoration: BoxDecoration(borderRadius: BorderRadius.circular(8.0)),
          // )
        ],
      ),
    );
  }
}
