import 'package:bmi_calculator/results_page.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'components/IconCard.dart';
import 'components/CardBox.dart';
import 'components/const.dart';
import 'components/roundIconButton.dart';
import 'calculator.dart';

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Gender selectedgender;
  int height = 180;
  int weight = 60;
  int age = 25;

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
                SliderTheme(
                  data: SliderTheme.of(context).copyWith(
                      trackHeight: 1,
                      inactiveTrackColor: Color(0xFF6F707F),
                      overlayColor: Color(0x1FD64C68),
                      activeTrackColor: Colors.white,
                      thumbColor: Color(0xFFD64C68),
                      thumbShape: RoundSliderThumbShape(enabledThumbRadius: 15),
                      overlayShape: RoundSliderOverlayShape(overlayRadius: 30)),
                  child: Slider(
                    value: height.toDouble(),
                    min: 120.0,
                    max: 220.0,
                    onChanged: (double newVal) {
                      setState(() {
                        height = newVal.toInt();
                      });
                    },
                  ),
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
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "WEIGHT",
                        style: kLabelTextStyle,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        textBaseline: TextBaseline.alphabetic,
                        crossAxisAlignment: CrossAxisAlignment.baseline,
                        children: [
                          Text(
                            weight.toString(),
                            style: kBigLabelTextStyle,
                          ),
                          Text(
                            "kg",
                            style: kLabelTextStyle,
                          )
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          RoundIconButton(
                            iconData: FontAwesomeIcons.minus,
                            onPressed: () {
                              setState(() {
                                weight--;
                              });
                            },
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          RoundIconButton(
                            iconData: FontAwesomeIcons.plus,
                            onPressed: () {
                              setState(() {
                                weight++;
                              });
                            },
                          )
                        ],
                      )
                    ],
                  ),
                )),
                Expanded(
                    child: CardBox(
                  color: kActiveCardBoxColor,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "AGE",
                        style: kLabelTextStyle,
                      ),
                      Text(
                        age.toString(),
                        style: kBigLabelTextStyle,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          RoundIconButton(
                            iconData: FontAwesomeIcons.minus,
                            onPressed: () {
                              setState(() {
                                age--;
                              });
                            },
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          RoundIconButton(
                            iconData: FontAwesomeIcons.plus,
                            onPressed: () {
                              setState(() {
                                age++;
                              });
                            },
                          )
                        ],
                      )
                    ],
                  ),
                )),
              ],
            ),
          ),
          GestureDetector(
            onTap: () {
              Calculator cal = Calculator(height: height, weight: weight);

              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => ResultsPage(
                            result: cal.getResult(),
                            resultValue: cal.getBmiValue(),
                            resultText: cal.getResultText(),
                          )));
            },
            child: Container(
              color: kBottomContainerColor,
              margin: EdgeInsets.only(top: 10),
              width: double.infinity,
              height: 80,
              padding: EdgeInsets.only(bottom: 20),
              child: Center(
                child: Text(
                  'CALCULATE',
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
