import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notesapp/constants.dart';
import 'package:notesapp/cubits/add_note_cubit/add_note_cubit.dart';
import 'package:notesapp/cubits/notes_cubit/notes_cubit.dart';
import 'package:notesapp/simple_bloc_observer.dart';
import 'package:notesapp/views/edit_note_view.dart';
import 'package:notesapp/views/notes_view.dart';
import 'models/note_model.dart';
import 'package:hive_flutter/adapters.dart';

void main() async {
  // initlize and register the hive to be used
  await Hive.initFlutter();
  Hive.registerAdapter(NoteModelAdapter());
  await Hive.openBox<NoteModel>(kBoxName);
  Bloc.observer = SimpleBlocObserver();
  runApp(const HomeBage());
}

class HomeBage extends StatelessWidget {
  const HomeBage({super.key}) : super();

  @override
  Widget build(BuildContext context) {
  
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => NotesCubit(),
        ),
        BlocProvider(
          create: (context) => AddNoteCubit(),
        ),
      ],
      child: MaterialApp(
        // routes: {
        //   NotesView.id: (context) => const NotesView(),
        //   EditNoteView.id: (context) =>   EditNoteView(),
        // },
        debugShowCheckedModeBanner: false,
        theme: ThemeData(brightness: Brightness.dark),
        home: const NotesView(),
      ),
    );
  }
}
