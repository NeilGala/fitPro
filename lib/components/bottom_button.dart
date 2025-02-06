import 'package:flutter/material.dart';
import '../constants.dart';

class BottomButton extends StatelessWidget {
  const BottomButton({
    required this.onTap,
    required this.buttonTitle,
    Key? key,
  }) : super(key: key); // Constructor

  final VoidCallback onTap;
  final String buttonTitle;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        child: Center(
          child: Text(
            buttonTitle,
            style: KlargeButtonTextStyle,
          ),
        ),
        color: KbottomContainerColor,
        margin: EdgeInsets.only(top: 10.0),
        padding: EdgeInsets.only(bottom: 5.0),
        width: double.infinity,
        height: KbottomContainerHeight,
      ),
    );
  }
}
