import 'package:flutter/material.dart';
import 'package:notesapp/widgets/custom_botton.dart';
import 'package:notesapp/widgets/custom_textfield.dart';

class AddNoteBottumSheet extends StatelessWidget {
  const AddNoteBottumSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10.0),
      child: ListView(
        children: [
          const CustomTextField(
            fontSize: 20,
            hintText: "Title",
          ),
          const CustomTextField(
            fontSize: 15,
            hintText: "Description",
            withborder: false,
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height / 3,
          ),
          const CustomBottom()
        ],
      ),
    );
  }
}
