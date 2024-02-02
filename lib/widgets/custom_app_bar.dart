import 'package:flutter/material.dart';

import 'custom_search_icon.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key, required this.title, required this.icon});
  final String title;
  final IconData icon;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Text(
            title,
            style: const TextStyle(fontSize: 25, fontWeight: FontWeight.w500),
          ),
        ),
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadiusDirectional.circular(15),
            color: Colors.white.withOpacity(.15),
          ),
          child: CustomIcon(
            icon: icon,
          ),
        )
      ],
    );
  }
}
