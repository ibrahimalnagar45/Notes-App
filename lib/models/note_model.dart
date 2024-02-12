import 'package:hive/hive.dart';
part 'note_model.g.dart';

@HiveType(typeId: 0)
class NoteModel extends HiveObject {
  @HiveField(0)
  String title;
  @HiveField(1)
  String discreption;
  @HiveField(2)
  int color = 0xff0000;
  @HiveField(3)
  final String date;

  NoteModel({
    required this.title,
    required this.discreption,
   required this.color,
    required this.date,
  });
}
