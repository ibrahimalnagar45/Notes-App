import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notesapp/cubits/add_note_cubit/add_note_cubit.dart';
import 'package:notesapp/cubits/add_note_cubit/add_note_states.dart';

class CustomBottom extends StatelessWidget {
  const CustomBottom({super.key, this.onTap, this.isLoading = false});
  final Function()? onTap;
  final bool isLoading;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: BlocBuilder<AddNoteCubit, AddNoteState>(
        builder: (context, state) {
          return Container(
            height: 40,
            width: 200,
            decoration: BoxDecoration(
              color: Colors.blue.withOpacity(.7),
              borderRadius: BorderRadius.circular(23),
            ),
            child: state is AddnoteLoading  
                ? const Center(
                    child: CircularProgressIndicator(
                      color: Colors.black,
                    ),
                  )
                : const Center(
                    child: Text(
                    "Add",
                    style: TextStyle(color: Colors.white),
                  )),
          );
        },
      ),
    );
  }
}
