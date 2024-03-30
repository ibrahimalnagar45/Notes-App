import 'package:flutter/material.dart';

class CustomColorContainer extends StatelessWidget {
  const CustomColorContainer({
    super.key,
    required this.color,
    required this.ontap,
    required this.selected,
  });
  final Color color;
  final Function() ontap;
  final bool selected;
  @override
  Widget build(BuildContext context) {
    return selected
        ? Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10.0),
            child: Container(
              height: 26,
              width: 26,
              color: Colors.white,
              child: GestureDetector(
                onTap: ontap,
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 2, vertical: 2),
                  child: Container(
                    height: 24,
                    width: 24,
                    color: color,
                  ),
                ),
              ),
            ),
          )
        : Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10.0),
            child: GestureDetector(
              onTap: ontap,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 2, vertical: 2),
                child: Container(
                  height: 24,
                  width: 24,
                  color: color,
                ),
              ),
            ),
          );
  }
}
 