
import 'package:flutter/material.dart';

import 'note_card.dart';

class NotesListView extends StatelessWidget {
  const NotesListView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
            itemCount: 20,
            itemBuilder: (context, index) {
              return const Padding(
                padding:   EdgeInsets.symmetric(vertical: 4.0),
                child:  NoteCard(),
              );
            });
  }
}