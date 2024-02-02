import 'package:flutter/material.dart';
import 'package:notesapp/widgets/custom_app_bar.dart';
import 'package:notesapp/widgets/custom_textfield.dart';

class EditNoteView extends StatelessWidget {
  const EditNoteView({super.key});
  static String id = "EditNoteView";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: const CustomAppBar(
          icon: Icons.done,
          title: "Edit Note",
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8.0),
        child: ListView(
          children: const [
            CustomTextField(hintText: "Title", fontSize: 20),
            SizedBox(
              height: 20,
            ),
            CustomTextField(
              hintText: "discreption",
              fontSize: 15,
              withborder: false,
            )
          ],
        ),
      ),
    );
  }
}
