import 'package:flutter/material.dart';

 class BMIResultScreen extends StatelessWidget {
  final int age;
  final int result;
  final bool isMale;
  BMIResultScreen({required this.isMale,required this.age ,required this.result});


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'BMI Result',
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
        ),
        leading:IconButton(icon: Icon(Icons.arrow_back_ios_rounded,),
          onPressed: (){Navigator.pop(context);},) ,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Gender : ${isMale? 'Male' :'Female'}',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
            ),
            Text(
              'Result = $result',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
            ),
            Text(
              'Age =$age',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
            ),
          ],
        ),
      ),
    );
  }
}
