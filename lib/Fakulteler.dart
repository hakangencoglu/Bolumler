import 'dart:convert';
import 'dart:core';

import 'package:accordion/accordion.dart';
import 'package:accordion/controllers.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'FakulteDataModel.dart';
import 'MyDataTable.dart';


class Fakulteler extends StatefulWidget  {

  static const headerStyle = TextStyle(
      color: Color(0xffffffff), fontSize: 18, fontWeight: FontWeight.bold);
  static const contentStyleHeader = TextStyle(
      color: Color(0xff999999), fontSize: 14, fontWeight: FontWeight.w700);
  static const contentStyle = TextStyle(
      color: Color(0xff999999), fontSize: 14, fontWeight: FontWeight.normal);
  static const loremIpsum =
  '''Lorem ipsum is typically a corrupted version of 'De finibus bonorum et malorum', a 1st century BC text by the Roman statesman and philosopher Cicero, with words altered, added, and removed to make it nonsensical and improper Latin.''';
  static const slogan =
      'Do not forget to play around with all sorts of colors, backgrounds, borders, etc.';

  Fakulteler({Key? key}) : super(key: key);

  //const Fakulteler({super.key});
  @override
  FakultelerState createState() => FakultelerState();
}

class FakultelerState extends State<Fakulteler> {



  //List<FakulteDataModel> getData=[]; //Add this line
  //Add this code block
  @override
  void initState()  {
    //super.initState();
    readJson() ;
    //conersation();
  }


  late List liste=[];
   List<FakulteDataModel> getData=[];
// Fetch content from the json file
  //Future<List<FakulteDataModel>> readJson() async {
    Future<void> readJson() async {
    final String response = await rootBundle.loadString('lib/assets/FakulteBolum.json');
    final data = await json.decode(response);
    setState(() {
      liste = data["FakulteData"];
      print("..number of items ${liste.length}");
    });


  }

  void conersation(){
    for (int i=0;i<liste.length;i++) {
      FakulteDataModel fdm = FakulteDataModel(
          FakulteKodu: liste[i][0],
          FakulteAdi: liste[i][1],
          BolumAdi: liste[i][2],
          BolumKodu: liste[i][3]
      );
      getData.add(fdm);
    }
    int i=12;
  }


  @override
  Widget build(context) => Scaffold(
    backgroundColor: Colors.blueGrey[100],
    appBar: AppBar(
      title: const Text('İZÜ Fakülteleri'),
    ),
    body:
    Column(
      children: [
        liste.isNotEmpty?Expanded(
          child: ListView.builder(
            itemCount: liste.length,
            itemBuilder: (context, index) {


              FakulteDataModel fdm = FakulteDataModel(
                  FakulteKodu: liste[index]["Fakülte Kodu"],
                  //FakulteKodu: "liste[index][0]",
                  FakulteAdi: liste[index]["Fakülte Adı"],
                  BolumAdi: liste[index]["Bölüm Adı"],
                  BolumKodu: liste[index]["Bölüm Kodu"]
              );
              return Card(
                /*
                child:
                Accordion(
                  //#region Renklendirmeler
                  headerBorderColor: Colors.blueGrey,
                  headerBorderColorOpened: Colors.transparent,
                  headerBorderWidth: 1,
                  headerBackgroundColorOpened: Colors.green,
                  contentBackgroundColor: Colors.white,
                  contentBorderColor: Colors.green,
                  contentBorderWidth: 3,
                  contentHorizontalPadding: 20,
                  scaleWhenAnimating: true,
                  openAndCloseAnimation: true,
                  headerPadding: const EdgeInsets.symmetric(vertical: 7, horizontal: 15),
                  sectionOpeningHapticFeedback: SectionHapticFeedback.heavy,
                  sectionClosingHapticFeedback: SectionHapticFeedback.light,
                  //#endregion
                  children: [

                    /*
                   AccordionSection(
                    isOpen: true,
                    contentVerticalPadding: 20,
                    leftIcon:
                    const Icon(Icons.text_fields_rounded, color: Colors.white),
                    header: const Text('Simple Text', style: headerStyle),
                    content: const Text(loremIpsum, style: contentStyle),
                    ),
                    */
                    AccordionSection(
                        isOpen: false,
                        //leftIcon: const Icon(Icons.shopping_cart, color: Colors.white),
                        header: const Text ('Mühendislik ve Doğa Bilimleri Fakültesi Bölümleri', style: Fakulteler.headerStyle),
                        content: MyDataTable(fdm)
                    ),
                  ],
                ),
                */


                key: ValueKey(liste[index]["Fakülte Kodu"]),
                margin: const EdgeInsets.all(3),
                color: Colors.green,
                child: ListTile(
                  leading: Text(liste[index]["Fakülte Kodu"]),
                  title: Text(liste[index]["Fakülte Adı"]),
                  subtitle: Text(liste[index]["Bölüm Adı"] + " " + liste[index]["Bölüm Kodu"]),
                ),

              );
              },
          ),
        ): Container()
      ],
    ),



        /*
    FutureBuilder(
        future: readJson(),
        /*
        future: Future.delayed(const Duration(seconds: 1),() {
          return getData;
        }),
        */
        builder:( context,  snapshot) {
          /*
          if (snapshot.hasError)
          {
            return const Center(
                child: Text('An error has occurred!'),
                );
          }
          else */
            if (!snapshot.hasData) {
          // checking if API has data & if no data then loading bar
          return const Center(child: CircularProgressIndicator());
          }
          else {
          // return data after recieving it in snapshot.
          return Container(
            /*
        padding: const EdgeInsets.all(5),
        // Data Table logic and code is in DataClass
        child: DataClass(datalist: snapshot.data as List<Country>));
        }
        }),
        */
            child:
            Accordion(
              //#region Renklendirmeler
              headerBorderColor: Colors.blueGrey,
              headerBorderColorOpened: Colors.transparent,
              headerBorderWidth: 1,
              headerBackgroundColorOpened: Colors.green,
              contentBackgroundColor: Colors.white,
              contentBorderColor: Colors.green,
              contentBorderWidth: 3,
              contentHorizontalPadding: 20,
              scaleWhenAnimating: true,
              openAndCloseAnimation: true,
              headerPadding: const EdgeInsets.symmetric(vertical: 7, horizontal: 15),
              sectionOpeningHapticFeedback: SectionHapticFeedback.heavy,
              sectionClosingHapticFeedback: SectionHapticFeedback.light,
              //#endregion
              children: [
                /*
                   AccordionSection(
                    isOpen: true,
                    contentVerticalPadding: 20,
                    leftIcon:
                    const Icon(Icons.text_fields_rounded, color: Colors.white),
                    header: const Text('Simple Text', style: headerStyle),
                    content: const Text(loremIpsum, style: contentStyle),
                    ),
                    */
                AccordionSection(
                    isOpen: false,
                    //leftIcon: const Icon(Icons.shopping_cart, color: Colors.white),
                    header: const Text ('Mühendislik ve Doğa Bilimleri Fakültesi Bölümleri', style: Fakulteler.headerStyle),
                    content: MyDataTable(datalist: getData)
                ),
              ],
            ),
          );
          }
        }
        )
      */



  );
} //
