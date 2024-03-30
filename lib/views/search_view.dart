import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notesapp/cubits/notes_cubit/notes_cubit.dart';
import 'package:notesapp/models/note_model.dart';
import 'package:notesapp/widgets/custom_search_bar.dart';
import 'package:notesapp/widgets/note_card.dart';

class SearchView extends StatefulWidget {
  const SearchView({super.key});

  @override
  State<SearchView> createState() => _SearchViewState();
}

class _SearchViewState extends State<SearchView> {
  List<NoteModel?> notes = [];
  @override
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const SizedBox(height: 30),
          Searchfeild(
            onChanged: (data) {
              data = data;
              notes = BlocProvider.of<NotesCubit>(context).fetchANote(data);

              setState(() {});
            },
          ),
          Expanded(
            child: ListView.builder(
                itemCount: notes.length,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.only(top: 12.0),
                    child: NoteCard(note: notes[index]),
                  );
                }),
          )
        ],
      ),
    );
  }
}
