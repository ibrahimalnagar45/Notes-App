import 'package:flutter/material.dart';

class NoteWidget extends StatelessWidget {
  const NoteWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: 100,
          decoration: BoxDecoration(
              color: Colors.red, borderRadius: BorderRadius.circular(20)),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Column(
              children: [
                Text(
                  "flutter tips",
                  style: TextStyle(fontSize: 35),
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  "data",
                  style: TextStyle(fontSize: 18),
                ),
              ],
            ),
            Column(
              children: [
                IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.delete,
                    size: 30,
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  "date",
                  // style: TextStyle(),
                )
              ],
            )
          ],
        )
      ],
    );
  }
}
