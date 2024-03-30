import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notesapp/cubits/add_note_cubit/add_note_cubit.dart';
import 'package:notesapp/cubits/notes_cubit/notes_cubit.dart';
import 'package:notesapp/models/note_model.dart';
import 'custom_botton.dart';
import 'custom_color_row_options.dart';
import 'custom_textfield.dart';

class AddNoteForm extends StatefulWidget {
  const AddNoteForm({
    super.key,
  });
  @override
  State<AddNoteForm> createState() => _AddNoteFormState();
}

class _AddNoteFormState extends State<AddNoteForm> {
  final GlobalKey<FormState> formkey = GlobalKey();
  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;
  String? title, discreption;
  // final int color = Colors.black.value;

  NoteModel? note;
  @override
  Widget build(BuildContext context) {
    return Form(
      key: formkey,
      autovalidateMode: autovalidateMode,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          const SizedBox(
            height: 20,
          ),
          CustomTextField(
            onSaved: (value) {
              title = value;
            },
            maxLine: 2,
            fontSize: 20,
            hintText: "Title",
          ),
          const SizedBox(
            height: 20,
          ),
          CustomColorListView(
            note: note,
          ),
          CustomTextField(
            onSaved: (value) {
              discreption = value;
            },
            maxLine: 5,
            fontSize: 15,
            hintText: "Description",
            withborder: false,
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height / 10,
          ),
          Padding(
            padding: EdgeInsets.only(
                bottom: MediaQuery.of(context).viewInsets.bottom),
            child: CustomBottom(onTap: () {
              if (formkey.currentState!.validate()) {
                formkey.currentState!.save();
                note = NoteModel(
                    title: title!,
                    discreption: discreption!,
                    date: "${DateTime.now().hour.toString()}"
                        ':'
                        "${DateTime.now().minute.toString()}"
                        "  "
                        "${DateTime.now().day.toString()} "
                        "/"
                        "${DateTime.now().month.toString()}"
                        "/"
                        "${DateTime.now().year.toString()}",
                    color: note?.color ?? 0xff0000);
                BlocProvider.of<AddNoteCubit>(context).addNote(note!);
              } else {
                autovalidateMode = AutovalidateMode.always;
                setState(() {});
              }
            }),
          ),
          const SizedBox(
            height: 12,
          )
        ],
      ),
    );
  }
}
