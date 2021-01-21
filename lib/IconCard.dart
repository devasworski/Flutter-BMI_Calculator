import 'package:flutter/material.dart';

const TextStyle labelTextStyle =
    TextStyle(fontSize: 18, color: Color(0xFF6F707F));

class IconCard extends StatelessWidget {
  IconCard({this.label, @required this.icon});

  final String label;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          icon,
          size: 80,
        ),
        SizedBox(
          height: 15,
        ),
        Text(
          label,
          style: labelTextStyle,
        )
      ],
    );
  }
}
