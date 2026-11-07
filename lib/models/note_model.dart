import 'package:hive/hive.dart';
part 'note_model.g.dart';

@HiveType(typeId: 0)
class NoteModel extends HiveObject{
  @HiveField(0)
   String tittle;
  @HiveField(1)
   String subTittle;
  @HiveField(2)
  final String date;
  @HiveField(3)
   int color;

  NoteModel({
    required this.tittle,
    required this.subTittle,
    required this.date,
    required this.color,
  });
}
