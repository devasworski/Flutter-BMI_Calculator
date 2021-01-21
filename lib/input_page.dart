import 'package:flutter/material.dart';

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Container getBox() => Container(
        margin: EdgeInsets.all(15),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10), color: Color(0xFF323243)),
      );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
      ),
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: Row(
                children: [
                  Expanded(
                      child: CardBox(
                    color: Color(0xFF323243),
                  )),
                  Expanded(
                      child: CardBox(
                    color: Color(0xFF323243),
                  )),
                ],
              ),
            ),
            Expanded(
                child: CardBox(
              color: Color(0xFF323243),
            )),
            Expanded(
              child: Row(
                children: [
                  Expanded(
                      child: CardBox(
                    color: Color(0xFF323243),
                  )),
                  Expanded(
                      child: CardBox(
                    color: Color(0xFF323243),
                  )),
                ],
              ),
            ),
          ],
        ),
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
