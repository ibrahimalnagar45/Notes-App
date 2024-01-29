import 'package:flutter/material.dart';
import 'package:notesapp/views/notes_view.dart';

void main() {
  runApp(const HomeBage());
}

class HomeBage extends StatelessWidget {
  const HomeBage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(brightness: Brightness.dark),
      home: NotesView(),
    );
  }
}
