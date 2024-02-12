import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notesapp/cubits/add_note_cubit/add_note_cubit.dart';
import 'package:notesapp/cubits/add_note_cubit/add_note_states.dart';
import 'package:notesapp/cubits/notes_cubit/notes_cubit.dart';
import 'add_note_form.dart';

class AddNoteBottumSheet extends StatelessWidget {
  const AddNoteBottumSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10.0),
        child: BlocListener<AddNoteCubit, AddNoteState>(
          listener: (context, state) {
            if (state is AddnoteFailure) {}
            if (state is AddnoteSuccess) {
              BlocProvider.of<NotesCubit>(context).fetchAllNotes();
               
              Navigator.pop(context);
            }
          },
          child: Builder(builder: (state) {
            return AbsorbPointer(
                absorbing: state is AddnoteLoading ? true : false,
                child: const AddNoteForm());
          }),
        ));
  }
}
