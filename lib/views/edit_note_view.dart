import 'package:flutter/material.dart';
import 'package:notesapp/widgets/custom_app_bar.dart';
import 'package:notesapp/widgets/custom_color_row_options.dart';
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
            SizedBox(
              height: 18,
            ),
            CustomTextField(
              hintText: "Title",
              fontSize: 20,
              maxLine: 2,
            ),
            SizedBox(
              height: 20,
            ),
            CustomColorOptions(),
            CustomTextField(
              maxLine: 5,
              hintText: "discreption",
              fontSize: 15,
              withborder: false,
            ),
          ],
        ),
      ),
    );
  }
}
