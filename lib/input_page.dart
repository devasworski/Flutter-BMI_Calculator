import 'package:flutter/material.dart';

const Color cardBoxColor = Color(0xFF323243);
const Color bottomContainerColor = Color(0xFFD64C68);

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
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
                  color: cardBoxColor,
                )),
                Expanded(
                    child: CardBox(
                  color: cardBoxColor,
                )),
              ],
            ),
          ),
          Expanded(
              child: CardBox(
            color: cardBoxColor,
          )),
          Expanded(
            child: Row(
              children: [
                Expanded(
                    child: CardBox(
                  color: cardBoxColor,
                )),
                Expanded(
                    child: CardBox(
                  color: cardBoxColor,
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

class CardBox extends StatelessWidget {
  CardBox({@required this.color});
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(15),
      decoration:
          BoxDecoration(borderRadius: BorderRadius.circular(10), color: color),
    );
  }
}
