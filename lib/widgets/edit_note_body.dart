import 'package:flutter/material.dart';
import 'package:notesapp/models/note_model.dart';

import 'custom_color_row_options.dart';
import 'custom_textfield.dart';

class EditNoteBody extends StatefulWidget {
  const EditNoteBody({super.key, required this.note});
  final NoteModel note;
  @override
  State<EditNoteBody> createState() => _EditNoteBodyState();
}

class _EditNoteBodyState extends State<EditNoteBody> {
  final GlobalKey<FormState> formkey = GlobalKey();
  String? title, discreption;

  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;
  @override
  Widget build(BuildContext context) {
    return Form(
      key: formkey,
      autovalidateMode: autovalidateMode,
      child: ListView(
        children: [
          const SizedBox(
            height: 18,
          ),
          CustomTextField(
            onSaved: (value) {
              title = value;
            },
            hintText: widget.note.title,
            fontSize: 20,
            maxLine: 2,
          ),
          const SizedBox(
            height: 20,
          ),
          CustomColorListView(
            note: widget.note,
          ),
          CustomTextField(
            onSaved: (value) {
              discreption = value;
            },
            maxLine: 5,
            hintText: widget.note.discreption,
            fontSize: 15,
            withborder: false,
          ),
        ],
      ),
    );
  }
}
