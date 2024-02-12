import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:notesapp/constants.dart';
import 'package:notesapp/cubits/add_note_cubit/add_note_states.dart';
import 'package:notesapp/models/note_model.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AddNoteCubit extends Cubit<AddNoteState> {
  AddNoteCubit() : super(AddnoteInitial());
  Color color = Colors.black;
  static int key = -1;
  addNote(NoteModel note) async {
    note.color = color.value;
    emit(AddnoteLoading());
    try {
      var notesBox = Hive.box<NoteModel>(kBoxName);
      key++; // await notesBox.add(note);
      await notesBox.put(key, note);

      emit(AddnoteSuccess());
    } catch (e) {
      emit(AddnoteFailure(e.toString()));
    }
  }
}
