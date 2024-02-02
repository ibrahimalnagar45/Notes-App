import 'package:flutter/material.dart';

class CustomColorContainer extends StatelessWidget {
  const CustomColorContainer({super.key, required this.color});
  final Color color;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Container(
        height: 24,
        width: 24,
        color: color,
      ),
    );
  }
}
