import 'package:flutter/material.dart';
import 'package:notesapp/views/edit_note_view.dart';

class NoteCard extends StatelessWidget {
  const NoteCard({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, EditNoteView.id);
      },
      child: Container(
        decoration: BoxDecoration(
            color: Colors.white.withOpacity(.16),
            borderRadius: BorderRadius.circular(20)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            ListTile(
              title: const Text(
                "Flutter Tips",
                style: TextStyle(
                  fontSize: 35,
                ),
              ),
              subtitle: const Text(
                "datadatadatadatadatadatadatadatadatadatadatadatadatadatadatadata",
                style: TextStyle(
                  fontSize: 18,
                ),
                maxLines: 1,
                overflow: TextOverflow.clip,
              ),
              trailing: IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.delete,
                  size: 30,
                  color: Colors.white,
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(right: 32, bottom: 8),
              child: Text(
                "21/2/2002",
                // style: TextStyle(),
              ),
            )
          ],
        ),
      ),
    );
  }
}
