import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notesapp/cubits/add_note_cubit/add_note_cubit.dart';
import 'package:notesapp/cubits/add_note_cubit/add_note_states.dart';
import 'add_note_form.dart';

class AddNoteBottumSheet extends StatelessWidget {
  const AddNoteBottumSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10.0),
        child: BlocListener<AddNoteCubit, AddNoteState>(
          listener: (context, state) {
            if (state is AddnoteSuccess) {
              Navigator.pop(context);
            }
            if (state is AddnoteFailure) {
              print(state.errorMessage.toString());
            }
          },
          child: Builder(builder: (state) {
            return state is AddnoteLoading
                ? const CircularProgressIndicator()
                : const AddNoteForm();
          }),
        ));
  }
}
