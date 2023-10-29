import 'package:hive/hive.dart';

part 'notes_models.g.dart';

@HiveType(typeId: 0)
class NotesModels extends HiveObject {
  @HiveField(0)
  final String title;
  @HiveField(1)
  final String subtitle;
  @HiveField(2)
  final String date;
  @HiveField(3)
  int color;

  NotesModels(
      {required this.color,
      required this.date,
      required this.subtitle,
      required this.title});
}
