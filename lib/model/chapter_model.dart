
import 'package:bhagvad_gita/model/en_hi_model.dart';
class ChapterModel{
  int chapter_number;
  int verses_count;
  String name;
  String translation;
  String transliteration;
  EnHi meaning;
  EnHi summary;

  ChapterModel({required this.chapter_number, required this.verses_count, required this.name,
                  required this.translation, required this.transliteration, required this.meaning, required this.summary});
                  


}
