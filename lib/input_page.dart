import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'IconCard.dart';
import 'CardBox.dart';

const Color activecardBoxColor = Color(0xFF323243);
const Color inactivecardBoxColor = Color(0xFF242639);
const Color bottomContainerColor = Color(0xFFD64C68);
enum Gender { female, male }

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Gender selectedgender;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
      ),
      body: Column(
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
                      ? activecardBoxColor
                      : inactivecardBoxColor,
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
                      ? activecardBoxColor
                      : inactivecardBoxColor,
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
            color: activecardBoxColor,
          )),
          Expanded(
            child: Row(
              children: [
                Expanded(
                    child: CardBox(
                  color: activecardBoxColor,
                )),
                Expanded(
                    child: CardBox(
                  color: activecardBoxColor,
                )),
              ],
            ),
          ),
          Container(
            color: bottomContainerColor,
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
