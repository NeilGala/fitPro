import 'package:flutter/material.dart';

const labelTextStyle = TextStyle(
  color: Color(0xFF8D8E98),
  fontWeight: FontWeight.bold,
  fontSize: 25.0,
);

class IconContent extends StatelessWidget {
  const IconContent({
    required this.icon,
    required this.label,
    Key? key,
  }) : super(key: key);

  final IconData icon;
  final String label;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        Icon(
          icon,
          color: Colors.white,
          size: 80.0,
        ),
        SizedBox(
          height: 5.0,
        ),
        Text(
          label,
          style: labelTextStyle,
        ),
      ],
    );
  }
}
