import 'package:flutter/material.dart';
import 'package:notesapp/widgets/custom_color_container.dart';

class CustomColorOptions extends StatelessWidget {
  const CustomColorOptions({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        CustomColorContainer(
          color: Colors.red,
        ),
        CustomColorContainer(
          color: Colors.orange,
        ),
        CustomColorContainer(
          color: Colors.yellow,
        ),
        CustomColorContainer(
          color: Colors.green,
        ),
        CustomColorContainer(
          color: Colors.blue,
        ),
        CustomColorContainer(
          color: Colors.indigo,
        ),
        CustomColorContainer(
          color: Colors.purple,
        ),
      ],
    );
  }
}
