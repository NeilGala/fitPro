import 'package:flutter/material.dart';

class ReusableCard extends StatelessWidget {
  const ReusableCard({
    Key? key,
    required this.onPress, // Make onPress required
    this.colour = const Color(0xFF1B1F33),
    this.cardChild,
  }) : super(key: key); //Constructor

  final Color colour;
  final Widget? cardChild; // Mark cardChild as nullable
  final VoidCallback onPress;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Container(
        child: cardChild, // Can be null, which is fine
        margin: const EdgeInsets.all(15.0),
        decoration: BoxDecoration(
          color: colour,
          borderRadius: BorderRadius.circular(15.0),
        ),
      ),
    );
  }
}
