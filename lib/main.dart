import 'package:flutter/material.dart';
import 'package:notesapp/views/notes_view.dart';

void main() {
  runApp(
    MaterialApp(
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
