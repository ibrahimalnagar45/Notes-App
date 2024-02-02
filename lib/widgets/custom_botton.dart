import 'package:flutter/material.dart';

class CustomBottom extends StatelessWidget {
  const CustomBottom({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Container(
        height: 40,
        width: 200,
        decoration: BoxDecoration(
          color: Colors.blue.withOpacity(.7),
          borderRadius: BorderRadius.circular(23),
        ),
        child: const Center(
            child: Text(
          "Add",
          style: TextStyle(color: Colors.white),
        )),
      ),
    );
  }
}
