import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notesapp/cubits/add_note_cubit/add_note_cubit.dart';
import 'package:notesapp/models/note_model.dart';
import 'package:notesapp/widgets/custom_color_container.dart';

class CustomColorListView extends StatefulWidget {
  const CustomColorListView({
    super.key,
    required this.note,
  });
  final NoteModel? note;

  @override
  State<CustomColorListView> createState() => _CustomColorListViewState();
}

class _CustomColorListViewState extends State<CustomColorListView> {
  final List<Color> colors = const [
    Colors.black,
    Colors.red,
    Colors.orange,
    Colors.purple,
    Colors.indigo,
    Colors.blue,
    Colors.green,
    Colors.yellow
  ];
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 24,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: colors.length,
        itemBuilder: (context, index) => CustomColorContainer(
          color: colors[index],
          ontap: () {
            currentIndex = index;
            if (widget.note != null) {
              widget.note!.color = colors[index].value;
            } else {
              BlocProvider.of<AddNoteCubit>(context).color = colors[index];
            }
          },
        ),
      ),
    );
  }
}
