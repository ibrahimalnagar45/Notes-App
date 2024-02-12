import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notesapp/cubits/notes_cubit/notes_cubit.dart';
import 'package:notesapp/models/note_model.dart';
import 'package:notesapp/views/edit_note_view.dart';

class NoteCard extends StatelessWidget {
  const NoteCard({super.key, required this.note});
  final NoteModel? note;
  @override
  Widget build(BuildContext context) {
    return note == null
        ? const Text("there is not items ")
        : GestureDetector(
            onTap: () {
              Navigator.of(context).push(MaterialPageRoute(builder: (context) {
                return EditNoteView(
                  note: note!,
                );
              }));
            },
            child: Container(
              decoration: BoxDecoration(
                color: note!.color == Colors.yellow.value
                    ? Color(note!.color).withOpacity(.4)
                    : Color(note!.color),
                borderRadius: BorderRadius.circular(20),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  ListTile(
                    title: Text(
                      note!.title,
                      style: const TextStyle(
                        fontSize: 35,
                      ),
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                    ),
                    subtitle: Text(
                      note!.discreption,
                      style: const TextStyle(
                        fontSize: 18,
                      ),
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                    ),
                    trailing: IconButton(
                      onPressed: () {
                        note!.delete();
                        BlocProvider.of<NotesCubit>(context).fetchAllNotes();
                      },
                      icon: const Icon(
                        Icons.delete,
                        size: 30,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 32, bottom: 8),
                    child: Text(
                      note!.date,
                      // style: TextStyle(),
                    ),
                  )
                ],
              ),
            ),
          );
  }
}
