import 'package:notesapp/cubits/notes_cubit/notes_cubit.dart';
import 'package:notesapp/cubits/notes_cubit/notes_states.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter/material.dart';
import 'note_card.dart';

class NotesListView extends StatefulWidget {
  const NotesListView({super.key});
  @override
  State<NotesListView> createState() => _NotesListViewState();
}

class _NotesListViewState extends State<NotesListView> {
  @override
  void initState() {
    BlocProvider.of<NotesCubit>(context).fetchAllNotes();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NotesCubit, NotesState>(
      builder: (context, state) {
        // List<NoteModel> notes = BlocProvider.of<NotesCubit>(context).notes!;
        return ListView.builder(
            itemCount: BlocProvider.of<NotesCubit>(context).notes.length,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.symmetric(vertical: 4.0),
                child: NoteCard(
                    note: BlocProvider.of<NotesCubit>(context).notes[index]),
              );
            });
      },
    );
  }
}
