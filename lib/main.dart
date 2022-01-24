import 'package:bhagvad_gita/helper/chapter_data.dart';
import 'package:bhagvad_gita/model/chapter_model.dart';
import 'package:flutter/material.dart';
import 'dart:io' show Platform;
import 'package:flutter/services.dart';

void main() {
  runApp(MaterialApp(
    title: "Bhagwad Gita",
    home: MyHome(),
    debugShowCheckedModeBanner: false,
  ));
}

class MyHome extends StatefulWidget {
  const MyHome({Key? key}) : super(key: key);
  //aru global variable yeta hai, jasto arko page pathauna parne argument

  @override
  State<MyHome> createState() => _MyHomeState();
}

class _MyHomeState extends State<MyHome> {
  List<ChapterModel> allChapters = List<ChapterModel>.empty(growable: true);
  bool _loading = true;
  bool isError = false;
  String errMessage = '';
  getAllChapter() async {
    print("called.");
    ChapterData Chapters = ChapterData();
    bool res = await Chapters.getAllChapter();
    if (res) {
      print("utako length: ${Chapters.myChapters.length}");
      allChapters = List.from(Chapters.myChapters);
      setState(() {
        _loading = false;
      });
    } else {
      setState(() {
        isError = true;
        errMessage = Chapters.errMsg;
      });
    }
  }

  @override
  void initState() {
    super.initState();
    getAllChapter();
  }

  myDialog() {
    return AlertDialog(
      title: const Text("Error occured"),
      actions: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            errMessage,
            style: TextStyle(backgroundColor: Colors.white70, fontSize: 16.0),
          ),
        ),
        ElevatedButton(
            child: Text(
              "COOL",
              style: TextStyle(color: Colors.white, fontSize: 20),
            ),
            onPressed: () {
              // Navigator.pop(context);
              if (Platform.isAndroid) {
                SystemNavigator.pop();
              } else if (Platform.isIOS) {
                //exit(0);
              }
            }
            // color: Color.fromRGBO(91, 55, 185, 1.0),
            // radius: BorderRadius.circular(10.0),
            ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("My Day is Coming"),
        ),
        body: _loading
            ? isError
                ? Center(
                    child: myDialog(),
                  )
                : const Center(
                    child: CircularProgressIndicator(),
                  )
            : ListView.builder(
                itemCount: allChapters.length,
                scrollDirection: Axis.vertical,
                itemBuilder: (context, index) {
                  print("first chapter: ${allChapters[index].name}");
                  return ChapterCard(
                    chapterName: "Test $index",
                    chapterNum: index,
                    verseCount: index,
                    chapterDesc: "Test des $index",
                  );
                }));
  }
}

class ChapterCard extends StatelessWidget {
  String chapterName;
  int chapterNum;
  int verseCount;
  String chapterDesc;

  ChapterCard(
      {required this.chapterName,
      required this.chapterNum,
      required this.verseCount,
      required this.chapterDesc});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        //on card tapped work is here
      },
      child: Card(
        color: Colors.white60,
        child: Center(
          heightFactor: 1.2,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      chapterNum.toString() + ".  ",
                      style: const TextStyle(
                          color: Colors.blue,
                          fontFamily: 'Poppins',
                          fontSize: 18.0,
                          fontWeight: FontWeight.bold),
                    ),
                    Text(
                      chapterName,
                      style: const TextStyle(
                          color: Colors.blueAccent,
                          fontFamily: 'Poppins',
                          fontSize: 18.0,
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 10.0,
                ),
                Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        chapterDesc,
                        style: TextStyle(
                            color: Colors.lightBlue.shade700,
                            fontFamily: 'Poppins',
                            fontSize: 14.0,
                            fontWeight: FontWeight.normal),
                      ),
                      Text(verseCount.toString()),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
