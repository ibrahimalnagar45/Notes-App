import 'package:flutter/material.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:notesapp/views/edit_note_view.dart';
import 'package:notesapp/views/notes_view.dart';

import 'models/note_model.dart';

void main() async {
  await Hive.initFlutter();
  await Hive.openBox("notes_box");
  Hive.registerAdapter(NoteModelAdapter());
  runApp(
    MaterialApp(
      routes: {
        NotesView.id: (context) => const NotesView(),
        EditNoteView.id: (context) => const EditNoteView(),
      },
      debugShowCheckedModeBanner: false,
      theme: ThemeData(brightness: Brightness.dark),
      home: const HomeBage(),
    ),
  );
}

class HomeBage extends StatelessWidget {
  const HomeBage({super.key}) : super();

  @override
  Widget build(BuildContext context) {
    return const NotesView();
  }
}
