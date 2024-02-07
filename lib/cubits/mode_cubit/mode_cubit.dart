import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notesapp/cubits/mode_cubit/mode_states.dart';

class SubjectCubit extends Cubit<ModeState> {
  SubjectCubit() : super(ModeInitial());

  changeModeToDark() {
    ThemeData(brightness: Brightness.dark);
  }

  changeModeToLight() {
    ThemeData(brightness: Brightness.light);
  }
}
