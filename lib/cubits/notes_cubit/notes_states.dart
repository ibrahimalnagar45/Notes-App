import 'package:notesapp/models/note_model.dart';

abstract class NotesState {}

class NotesInitial extends NotesState {}

class NotesFailuer extends NotesState {
  final String errorMessage;
  NotesFailuer({required this.errorMessage});
}

class NotesSuccess extends NotesState {
  final List<NoteModel> notes;

  NotesSuccess({required this.notes});

}
