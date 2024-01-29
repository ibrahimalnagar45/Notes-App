import 'package:flutter/material.dart';
import 'package:notesapp/widgets/note_widget.dart';

class NotesView extends StatelessWidget {
  const NotesView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Notes",
          style: TextStyle(fontSize: 25, fontWeight: FontWeight.w500),
        ),
        actions: [
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadiusDirectional.circular(15),
              color: Colors.white.withOpacity(.15),
            ),
            child: IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.search,
                size: 30,
              ),
            ),
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 9.0),
        child: ListView(children: [
          NoteWidget(),
          SizedBox(
            height: 12,
          ),
          NoteWidget(),
          SizedBox(
            height: 12,
          ),
          NoteWidget(),
        ]),
      ),
    );
  }
}
