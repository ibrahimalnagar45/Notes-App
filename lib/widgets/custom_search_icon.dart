import 'package:flutter/material.dart';

class CustomIcon extends StatelessWidget {
  const CustomIcon({super.key, required this.icon, required this.onpressed});
  final IconData icon;
  final Function() onpressed;
  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed:  onpressed,
      icon: Icon(
        icon,
        size: 30,
      ),
    );
  }
}
