import 'package:flutter/material.dart';
import '../constants.dart';

class newBarInterfaces extends StatelessWidget {
  const newBarInterfaces({
    Key? key,
    required this.icon,
    required this.label,
    required this.onTap, // Accept an onTap function
  }) : super(key: key);

  final IconData icon;
  final String label;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(
        icon,
        size: 50.0,
      ),
      title: Text(
        label,
        style: KDrawerTextStyle,
      ),
      onTap: onTap,
    );
  }
}
