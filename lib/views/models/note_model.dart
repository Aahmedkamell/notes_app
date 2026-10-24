import 'package:hive/hive.dart';
part 'note_model.g.dart';

@HiveType(typeId: 0)
class NoteModel{
  @HiveField(0)
  final String tittle;
  @HiveField(1)
  final String subTittle;
  @HiveField(2)
  final String date;
  @HiveField(3)
  final int color;

  NoteModel({
    required this.tittle,
    required this.subTittle,
    required this.date,
    required this.color,
  });
}
