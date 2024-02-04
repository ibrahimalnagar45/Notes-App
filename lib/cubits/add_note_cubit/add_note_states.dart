abstract class AddNoteState {}

class AddnoteInitial extends AddNoteState {}

class AddnoteSuccess extends AddNoteState {}

class AddnoteFailure extends AddNoteState {
  final String errorMessage;

  AddnoteFailure(this.errorMessage);

}

class AddnoteLoading extends AddNoteState {}
