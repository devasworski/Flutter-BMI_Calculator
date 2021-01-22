import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'IconCard.dart';
import 'CardBox.dart';
import 'const.dart';

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Gender selectedgender;
  int height = 180;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: Row(
              children: [
                Expanded(
                    child: CardBox(
                  onTap: () {
                    setState(() {
                      selectedgender = Gender.male;
                    });
                  },
                  color: selectedgender == Gender.male
                      ? kActiveCardBoxColor
                      : kInactiveCardBoxColor,
                  child: IconCard(
                    label: "MALE",
                    icon: FontAwesomeIcons.mars,
                  ),
                )),
                Expanded(
                    child: CardBox(
                  onTap: () {
                    setState(() {
                      selectedgender = Gender.female;
                    });
                  },
                  color: selectedgender == Gender.female
                      ? kActiveCardBoxColor
                      : kInactiveCardBoxColor,
                  child: IconCard(
                    label: "FEMALE",
                    icon: FontAwesomeIcons.venus,
                  ),
                )),
              ],
            ),
          ),
          Expanded(
              child: CardBox(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "HEIGHT",
                  style: kLabelTextStyle,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.baseline,
                  textBaseline: TextBaseline.alphabetic,
                  children: [
                    Text(
                      height.toString(),
                      style: kBigLabelTextStyle,
                    ),
                    Text(
                      "cm",
                      style: kLabelTextStyle,
                    )
                  ],
                ),
                Slider(
                  value: height.toDouble(),
                  min: 120.0,
                  max: 220.0,
                  onChanged: (double newVal) {
                    setState(() {
                      height = newVal.toInt();
                    });
                  },
                  activeColor: kBottomContainerColor,
                  inactiveColor: Color(0xFF6F707F),
                )
              ],
            ),
            color: kActiveCardBoxColor,
          )),
          Expanded(
            child: Row(
              children: [
                Expanded(
                    child: CardBox(
                  color: kActiveCardBoxColor,
                )),
                Expanded(
                    child: CardBox(
                  color: kActiveCardBoxColor,
                )),
              ],
            ),
          ),
          Container(
            color: kBottomContainerColor,
            margin: EdgeInsets.only(top: 10),
            width: double.infinity,
            height: 80,
            child: Center(),
          )
        ],
      ),
    );
  }
}
