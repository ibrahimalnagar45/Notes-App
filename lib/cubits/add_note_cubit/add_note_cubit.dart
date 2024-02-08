import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:notesapp/constants.dart';
import 'package:notesapp/cubits/add_note_cubit/add_note_states.dart';
import 'package:notesapp/models/note_model.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AddNoteCubit extends Cubit<AddNoteState> {
  AddNoteCubit() : super(AddnoteInitial());

  addNote(NoteModel note) async {
    emit(AddnoteLoading());
    try {
      var notesBox = Hive.box<NoteModel>(kBoxName);
      await notesBox.add(note);
      emit(AddnoteSuccess( ));
    } catch (e) {
      emit(AddnoteFailure(e.toString()));
    }
  }
}
