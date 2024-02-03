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
      body: const Padding(
        padding: EdgeInsets.symmetric(horizontal: 8.0),
        child: EditNote(),
      ),
    );
  }
}

class EditNote extends StatefulWidget {
  const EditNote({super.key});

  @override
  State<EditNote> createState() => _EditNoteState();
}

class _EditNoteState extends State<EditNote> {
  final GlobalKey<FormState> formkey = GlobalKey();
  String? title, discreption;

  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;
  @override
  Widget build(BuildContext context) {
    return Form(
      key: formkey,
      autovalidateMode: autovalidateMode,
      child: ListView(
        children: [
          const SizedBox(
            height: 18,
          ),
          CustomTextField(
            onsaved: (value) {
              
                title = value;
              
            },
            hintText: "Title",
            fontSize: 20,
            maxLine: 2,
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
            hintText: "discreption",
            fontSize: 15,
            withborder: false,
          ),
        ],
      ),
    );
  }
}
