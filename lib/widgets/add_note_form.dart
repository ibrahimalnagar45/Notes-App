import 'package:flutter/material.dart';

import 'custom_botton.dart';
import 'custom_color_row_options.dart';
import 'custom_textfield.dart';

class AddNoteForm extends StatefulWidget {
  const AddNoteForm({super.key});

  @override
  State<AddNoteForm> createState() => _AddNoteFormState();
}

class _AddNoteFormState extends State<AddNoteForm> {
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
