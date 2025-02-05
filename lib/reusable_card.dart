import 'package:flutter/material.dart';

class ReusableCard extends StatelessWidget {
  // Constructor with default value for colour and nullable cardChild
  const ReusableCard(
      {this.colour = const Color(0xFF1B1F33), this.cardChild, Key? key})
      : super(key: key);

  final Color colour;
  final Widget? cardChild; // Mark cardChild as nullable

  @override
  Widget build(BuildContext context) {
    return Container(
      child: cardChild, // Can be null, which is fine
      margin: const EdgeInsets.all(15.0),
      decoration: BoxDecoration(
        color: colour,
        borderRadius: BorderRadius.circular(15.0),
      ),
    );
  }
}
