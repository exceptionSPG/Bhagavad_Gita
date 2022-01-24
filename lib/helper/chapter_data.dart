
import 'dart:convert';

import 'package:bhagvad_gita/model/chapter_model.dart';
import 'package:bhagvad_gita/model/en_hi_model.dart';
import 'package:flutter/foundation.dart';
import 'package:http/http.dart' as http;
class ChapterData {
  List<ChapterModel> myChapters = List<ChapterModel>.empty(growable: true);
  String baseUrl = 'https://bhagavadgitaapi.in/chapters?api_key=cd362e4c6b8ff6123';
  String errMsg = ' ';


  Future<bool> getAllChapter() async{
    var response = await http.get(Uri.parse(baseUrl));
    print(response.statusCode);
    // var jsonData = jsonDecode(response.body);
     
    if(response.statusCode == 200){
      var element = jsonDecode(response.body);
      if(element['name']!=null ){
          ChapterModel chapterModel = ChapterModel(
            chapter_number: element['chapter_number'],
            verses_count: element['verses_count'],
            name: element['name'],
            translation: element['translation'],
            transliteration: element['transliteration'],
            meaning: EnHi(en: element['meaning']['en'],hi: element['meaning']['hi']),
            summary: EnHi(en: element['summary']['en'],hi: element['summary']['hi']),
          );
          myChapters.add(chapterModel);
          
        }else {
          print("error vitra xiri rako xaina vai\n");
        }
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