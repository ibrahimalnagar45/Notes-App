import 'package:flutter/material.dart';
import 'package:notesapp/views/search_view.dart';
import 'package:notesapp/widgets/add_note_buttom_sheet.dart';
import '../widgets/custom_app_bar.dart'; 
import '../widgets/notes_listview.dart';

class NotesView extends StatelessWidget {
  const NotesView({super.key});
  static String id = "NotesView";

  @override
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: CustomAppBar(
          onpressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) {
                return const SearchView();
              }),
            );
          },
          icon: Icons.search,
          title: "Notes",
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showModalBottomSheet(
              isScrollControlled: true,
              context: context,
              builder: (context) {
                return const AddNoteBottumSheet();
              });
        },
        backgroundColor: Colors.black,
        child: const Icon(
          Icons.add,
        ),
      ),
      body: const Padding(
        padding: EdgeInsets.symmetric(horizontal: 9.0),
        child: NotesListView(),
      ),
    );
  }
}
