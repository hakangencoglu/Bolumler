import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'Fakulteler.dart';

void main() {
  runApp(const MyApp());
}


class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    //initializing the localization controller

    return GetMaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'PrakTID',
        //initializing the routes of the app

        getPages: [
          /*
          GetPage(
              name: "/",
              page: () => const InitialLoadingScreen(),
              transition: Transition.noTransition),
              */
          /*
          GetPage(
              name: "/welcome",
              page: () => const NewScreen(),
              transition: Transition.noTransition),


           */

          GetPage(
              name: "/",
              page: () =>  Fakulteler(),
              transition: Transition.noTransition),


        ]);
  }
}

/*
class MyApp extends StatefulWidget {
  MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
            appBar: AppBar(
              backgroundColor: Colors.green,
              title: const Text('GeeksforGeeks'),
            ),
            body: const FirstScreen()));
  }
}
*/

