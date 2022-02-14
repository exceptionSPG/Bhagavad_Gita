
import 'dart:convert';

import 'package:bhagvad_gita/model/chapter_model.dart';
import 'package:bhagvad_gita/model/en_hi_model.dart';
import 'package:flutter/foundation.dart';
import 'package:http/http.dart' as http;
class ChapterData {
  List<ChapterModel> myChapters = List<ChapterModel>.empty(growable: true);
  String baseUrl = 'https://bhagavadgitaapi.in/chapters?api_key=YOUR_API_KEY';
  String errMsg = ' ';


  Future<bool> getAllChapter() async{
    var response = await http.get(Uri.parse(baseUrl));
    print(response.statusCode);
    // var jsonData = jsonDecode(response.body);
     
    if(response.statusCode == 200){

      var element1 = jsonDecode(response.body)[0];
          ChapterModel chapterModel = ChapterModel(
            chapter_number: element1['chapter_number'],
            verses_count: element1['verses_count'],
            name: element1['name'],
            translation: element1['translation'],
            transliteration: element1['transliteration'],
            meaning: EnHi(en: element1['meaning']['en'],hi: element1['meaning']['hi']),
            summary: EnHi(en: element1['summary']['en'],hi: element1['summary']['hi']),
          );
          myChapters.add(chapterModel);

          var element2 = jsonDecode(response.body)[1];
          ChapterModel chapterModel2 = ChapterModel(
            chapter_number: element2['chapter_number'],
            verses_count: element2['verses_count'],
            name: element2['name'],
            translation: element2['translation'],
            transliteration: element2['transliteration'],
            meaning: EnHi(en: element2['meaning']['en'],hi: element2['meaning']['hi']),
            summary: EnHi(en: element2['summary']['en'],hi: element2['summary']['hi']),
          );
          myChapters.add(chapterModel2);

          var element3 = jsonDecode(response.body)[2];
          ChapterModel chapterModel3 = ChapterModel(
            chapter_number: element3['chapter_number'],
            verses_count: element3['verses_count'],
            name: element3['name'],
            translation: element3['translation'],
            transliteration: element3['transliteration'],
            meaning: EnHi(en: element3['meaning']['en'],hi: element3['meaning']['hi']),
            summary: EnHi(en: element3['summary']['en'],hi: element3['summary']['hi']),
          );
          myChapters.add(chapterModel3);

          var element4 = jsonDecode(response.body)[3];
          ChapterModel chapterModel4 = ChapterModel(
            chapter_number: element4['chapter_number'],
            verses_count: element4['verses_count'],
            name: element4['name'],
            translation: element4['translation'],
            transliteration: element4['transliteration'],
            meaning: EnHi(en: element4['meaning']['en'],hi: element4['meaning']['hi']),
            summary: EnHi(en: element4['summary']['en'],hi: element4['summary']['hi']),
          );
          myChapters.add(chapterModel4);

          var element5 = jsonDecode(response.body)[4];
          ChapterModel chapterModel5 = ChapterModel(
            chapter_number: element5['chapter_number'],
            verses_count: element5['verses_count'],
            name: element5['name'],
            translation: element5['translation'],
            transliteration: element5['transliteration'],
            meaning: EnHi(en: element5['meaning']['en'],hi: element5['meaning']['hi']),
            summary: EnHi(en: element5['summary']['en'],hi: element5['summary']['hi']),
          );
          myChapters.add(chapterModel5);

          var element6 = jsonDecode(response.body)[5];
          ChapterModel chapterModel6 = ChapterModel(
            chapter_number: element6['chapter_number'],
            verses_count: element6['verses_count'],
            name: element6['name'],
            translation: element6['translation'],
            transliteration: element6['transliteration'],
            meaning: EnHi(en: element6['meaning']['en'],hi: element6['meaning']['hi']),
            summary: EnHi(en: element6['summary']['en'],hi: element6['summary']['hi']),
          );
          myChapters.add(chapterModel6);

          var element7 = jsonDecode(response.body)[6];
          ChapterModel chapterModel7 = ChapterModel(
            chapter_number: element7['chapter_number'],
            verses_count: element7['verses_count'],
            name: element7['name'],
            translation: element7['translation'],
            transliteration: element7['transliteration'],
            meaning: EnHi(en: element7['meaning']['en'],hi: element7['meaning']['hi']),
            summary: EnHi(en: element7['summary']['en'],hi: element7['summary']['hi']),
          );
          myChapters.add(chapterModel7);

          var element8 = jsonDecode(response.body)[7];
          ChapterModel chapterModel8 = ChapterModel(
            chapter_number: element8['chapter_number'],
            verses_count: element8['verses_count'],
            name: element8['name'],
            translation: element8['translation'],
            transliteration: element8['transliteration'],
            meaning: EnHi(en: element8['meaning']['en'],hi: element8['meaning']['hi']),
            summary: EnHi(en: element8['summary']['en'],hi: element8['summary']['hi']),
          );
          myChapters.add(chapterModel8);

          var element9 = jsonDecode(response.body)[8];
          ChapterModel chapterModel9 = ChapterModel(
            chapter_number: element9['chapter_number'],
            verses_count: element9['verses_count'],
            name: element9['name'],
            translation: element9['translation'],
            transliteration: element9['transliteration'],
            meaning: EnHi(en: element9['meaning']['en'],hi: element9['meaning']['hi']),
            summary: EnHi(en: element9['summary']['en'],hi: element9['summary']['hi']),
          );
          myChapters.add(chapterModel9);

          var element10 = jsonDecode(response.body)[9];
          ChapterModel chapterModel10 = ChapterModel(
            chapter_number: element10['chapter_number'],
            verses_count: element10['verses_count'],
            name: element10['name'],
            translation: element10['translation'],
            transliteration: element10['transliteration'],
            meaning: EnHi(en: element10['meaning']['en'],hi: element10['meaning']['hi']),
            summary: EnHi(en: element10['summary']['en'],hi: element10['summary']['hi']),
          );
          myChapters.add(chapterModel10);

          var element11 = jsonDecode(response.body)[10];
          ChapterModel chapterModel11 = ChapterModel(
            chapter_number: element11['chapter_number'],
            verses_count: element11['verses_count'],
            name: element11['name'],
            translation: element11['translation'],
            transliteration: element11['transliteration'],
            meaning: EnHi(en: element11['meaning']['en'],hi: element11['meaning']['hi']),
            summary: EnHi(en: element11['summary']['en'],hi: element11['summary']['hi']),
          );
          myChapters.add(chapterModel11);

          var element12 = jsonDecode(response.body)[11];
          ChapterModel chapterModel12 = ChapterModel(
            chapter_number: element12['chapter_number'],
            verses_count: element12['verses_count'],
            name: element12['name'],
            translation: element12['translation'],
            transliteration: element12['transliteration'],
            meaning: EnHi(en: element12['meaning']['en'],hi: element12['meaning']['hi']),
            summary: EnHi(en: element12['summary']['en'],hi: element12['summary']['hi']),
          );
          myChapters.add(chapterModel12);

          var element13 = jsonDecode(response.body)[12];
          ChapterModel chapterModel13 = ChapterModel(
            chapter_number: element13['chapter_number'],
            verses_count: element13['verses_count'],
            name: element13['name'],
            translation: element13['translation'],
            transliteration: element13['transliteration'],
            meaning: EnHi(en: element13['meaning']['en'],hi: element13['meaning']['hi']),
            summary: EnHi(en: element13['summary']['en'],hi: element13['summary']['hi']),
          );
          myChapters.add(chapterModel13);

          var element14 = jsonDecode(response.body)[13];
          ChapterModel chapterModel14 = ChapterModel(
            chapter_number: element14['chapter_number'],
            verses_count: element14['verses_count'],
            name: element14['name'],
            translation: element14['translation'],
            transliteration: element14['transliteration'],
            meaning: EnHi(en: element14['meaning']['en'],hi: element14['meaning']['hi']),
            summary: EnHi(en: element14['summary']['en'],hi: element14['summary']['hi']),
          );
          myChapters.add(chapterModel14);

          var element15 = jsonDecode(response.body)[14];
          ChapterModel chapterModel15 = ChapterModel(
            chapter_number: element15['chapter_number'],
            verses_count: element15['verses_count'],
            name: element15['name'],
            translation: element15['translation'],
            transliteration: element15['transliteration'],
            meaning: EnHi(en: element15['meaning']['en'],hi: element15['meaning']['hi']),
            summary: EnHi(en: element15['summary']['en'],hi: element15['summary']['hi']),
          );
          myChapters.add(chapterModel15);

          var element16 = jsonDecode(response.body)[15];
          ChapterModel chapterModel16 = ChapterModel(
            chapter_number: element16['chapter_number'],
            verses_count: element16['verses_count'],
            name: element16['name'],
            translation: element16['translation'],
            transliteration: element16['transliteration'],
            meaning: EnHi(en: element16['meaning']['en'],hi: element16['meaning']['hi']),
            summary: EnHi(en: element16['summary']['en'],hi: element16['summary']['hi']),
          );
          myChapters.add(chapterModel16);

          var element17 = jsonDecode(response.body)[16];
          ChapterModel chapterModel17 = ChapterModel(
            chapter_number: element17['chapter_number'],
            verses_count: element17['verses_count'],
            name: element17['name'],
            translation: element17['translation'],
            transliteration: element17['transliteration'],
            meaning: EnHi(en: element17['meaning']['en'],hi: element17['meaning']['hi']),
            summary: EnHi(en: element17['summary']['en'],hi: element17['summary']['hi']),
          );
          myChapters.add(chapterModel17);

          var element18 = jsonDecode(response.body)[17];
          ChapterModel chapterModel18 = ChapterModel(
            chapter_number: element18['chapter_number'],
            verses_count: element18['verses_count'],
            name: element18['name'],
            translation: element18['translation'],
            transliteration: element18['transliteration'],
            meaning: EnHi(en: element18['meaning']['en'],hi: element18['meaning']['hi']),
            summary: EnHi(en: element18['summary']['en'],hi: element18['summary']['hi']),
          );
          myChapters.add(chapterModel18);

        
  
    return true;
       
    }else {
      var error = jsonDecode(response.body);
      print(error['error']);
      errMsg = error['error'];
      return false;
    }

      


    //we get the data
    // if(jsonData!=null ){
    //   jsonData.forEach((element){
        
    //   });
    // }else {
    //   print("error to get data from server");
    // }
    /*
      if(element['name']!=null ){
          ChapterModel chapterModel = ChapterModel(
            chapter_number: element['chapter_number'],
            verse_count: element['verse_count'],
            name: element['name'],
            translation: element['translation'],
            transliteration: element['transliteration'],
            meaning: EnHi(en: element['meaning']['en'],hi: element['meaning']['hi']),
            summary: EnHi(en: element['summary']['en'],hi: element['summary']['hi']),
          );
          myChapters.add(chapterModel);
          print(len);
        }else {
          print("error vitra xiri rako xaina vai\n");
        }
      
    */

  }
  
}
