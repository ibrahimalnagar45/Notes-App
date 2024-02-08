import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:notesapp/cubits/notes_cubit/notes_states.dart';
import 'package:notesapp/models/note_model.dart';

import '../../constants.dart';

class NotesCubit extends Cubit<NotesState> {
  NotesCubit() : super(NotesInitial());
  List<NoteModel>? notes;
  fetchAllNotes() {
    var notesBox = Hive.box<NoteModel>(kBoxName);
    notes = notesBox.values.toList();
  }
}
