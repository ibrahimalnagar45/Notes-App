import 'package:flutter/material.dart';
import 'package:notesapp/widgets/custom_botton.dart';
import 'package:notesapp/widgets/custom_color_row_options.dart';
import 'package:notesapp/widgets/custom_textfield.dart';

class AddNoteBottumSheet extends StatelessWidget {
  const AddNoteBottumSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 10.0),
      child: AddNote(),
    );
  }
}

class AddNote extends StatefulWidget {
  const AddNote({super.key});

  @override
  State<AddNote> createState() => _AddNoteState();
}

class _AddNoteState extends State<AddNote> {
  final GlobalKey<FormState> formkey = GlobalKey();
  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;
  String? title, discreption;
  @override
  Widget build(BuildContext context) {
    return Form(
      key: formkey,
      autovalidateMode: autovalidateMode,
      child: ListView(
        children: [
          CustomTextField(
            onsaved: (value) {
              title = value;
            },
            maxLine: 2,
            fontSize: 20,
            hintText: "Title",
          ),
          const SizedBox(
            height: 20,
          ),
          const CustomColorOptions(),
          CustomTextField(
            onsaved: (value) {
              discreption = value;
            },
            maxLine: 5,
            fontSize: 15,
            hintText: "Description",
            withborder: false,
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height / 6,
          ),
          CustomBottom(
            onTap: () {
              if (formkey.currentState!.validate()) {
                formkey.currentState!.save();
              } else {
                autovalidateMode = AutovalidateMode.always;
                setState(() {});
              }
            },
          )
        ],
      ),
    );
  }
}
