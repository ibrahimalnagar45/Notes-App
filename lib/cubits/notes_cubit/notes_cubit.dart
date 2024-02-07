import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:notesapp/cubits/notes_cubit/notes_states.dart';
import 'package:notesapp/models/note_model.dart';

import '../../constants.dart';

class SubjectCubit extends Cubit<NotesState> {
  SubjectCubit() : super(NotesInitial());

  fetchAllNotes() {
    try {
      var noteBox = Hive.box<NoteModel>(kBoxName);
      emit(NotesSuccess(notes: noteBox.values.toList()));
    } catch (e) {
      emit(NotesFailuer(errorMessage: e.toString()));
    }
  }
}
