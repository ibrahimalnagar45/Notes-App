import 'package:flutter/material.dart';

import 'custom_search_icon.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
    const    Expanded(
          child:  Text(
            "Notes",
            style: TextStyle(fontSize: 25, fontWeight: FontWeight.w500),
          ),
        ),
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadiusDirectional.circular(15),
            color: Colors.white.withOpacity(.15),
          ),
          child: const CustomSearchIcon(),
        )
      ],
    );
  }
}
