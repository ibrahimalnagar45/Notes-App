import 'package:flutter/material.dart';
import 'package:notesapp/cubits/notes_cubit/notes_states.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notesapp/models/note_model.dart';
import 'package:hive_flutter/adapters.dart';
import '../../constants.dart';

class NotesCubit extends Cubit<NotesState> {
  NotesCubit() : super(NotesInitial());
  List<NoteModel> notes = [];

  fetchAllNotes() {
    var notesBox = Hive.box<NoteModel>(kBoxName);
    notes = notesBox.values.toList();
    emit(NotesSuccess());
  }

  List<NoteModel?> fetchANote(String noteTitle) {
    List<NoteModel?> noteFounded = [];

    var notesBox = Hive.box<NoteModel>(kBoxName);
    for (int i = 0; i < notes.length; i++) {
      if (notes[i].title == noteTitle || notes[i].title.contains(noteTitle)) {
        dynamic key = notesBox.keyAt(i);

        noteFounded.add(notesBox.get(key));
      } else if (notes[i].discreption.contains(noteTitle) ||
          notes[i].discreption == noteTitle) {
        dynamic key = notesBox.keyAt(i);

        noteFounded.add(notesBox.get(key));
      }
    }

    return noteFounded;
  }
}
