import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart'; 
import 'package:notesapp/cubits/notes_cubit/notes_cubit.dart';
import 'package:notesapp/models/note_model.dart';
import 'package:notesapp/widgets/custom_app_bar.dart';
import '../widgets/custom_color_row_options.dart';
import '../widgets/custom_textfield.dart';

class EditNoteView extends StatefulWidget {
  const EditNoteView({super.key, required this.note});
  static String id = "EditNoteView";
  final NoteModel note;

  @override
  State<EditNoteView> createState() => _EditNoteViewState();
}

class _EditNoteViewState extends State<EditNoteView> {
  final GlobalKey<FormState> formkey = GlobalKey();

  String? title, discreption;

  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: CustomAppBar(
          onpressed: () {
            widget.note.title = title ?? widget.note.title;
            widget.note.discreption = discreption ?? widget.note.discreption;
            widget.note.save();
            BlocProvider.of<NotesCubit>(context).fetchAllNotes();
            // BlocProvider.of<AddNoteCubit>(context).color;

            Navigator.pop(context);
         
          },
          icon: Icons.done,
          title: "Edit Note",
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8.0),
        child: Form(
          key: formkey,
          autovalidateMode: autovalidateMode,
          child: ListView(
            children: [
              const SizedBox(
                height: 18,
              ),
              CustomTextField(
                onChanged: (value) {
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
                onChanged: (value) {
                  discreption = value;
                },
                maxLine: 5,
                hintText: widget.note.discreption,
                fontSize: 15,
                withborder: false,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
