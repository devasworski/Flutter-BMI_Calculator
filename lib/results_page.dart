import 'package:bmi_calculator/components/CardBox.dart';
import 'package:bmi_calculator/components/const.dart';
import 'package:flutter/material.dart';

class ResultsPage extends StatelessWidget {
  ResultsPage(
      {@required this.result,
      @required this.resultValue,
      @required this.resultText});

  final String result;
  final String resultValue;
  final String resultText;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("BMI CALCULATOR"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Padding(
            padding: EdgeInsets.all(10),
            child: Text(
              "Your Results",
              style: TextStyle(fontSize: 50, fontWeight: FontWeight.bold),
            ),
          ),
          Expanded(
              child: CardBox(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  result,
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 22,
                      color: Colors.green),
                ),
                Text(
                  resultValue,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 100,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: Text(
                    resultText,
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 20),
                  ),
                )
              ],
            ),
            color: kActiveCardBoxColor,
          )),
          GestureDetector(
            onTap: () {
              Navigator.pop(context);
            },
            child: Container(
              color: kBottomContainerColor,
              height: 80,
              child: Center(
                child: Text(
                  "RE-CALCULATE",
                  style: kLargeButtonTextStyle,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
