import 'package:flutter/material.dart';
import 'package:portifolio/layout-details/appColors.dart';
import 'package:portifolio/screens/Home.dart';

void main() {
  runApp(myApp());
}

class myApp extends StatefulWidget {
  const myApp({Key? key}) : super(key: key);

  @override
  State<myApp> createState() => _myAppState();
}

class _myAppState extends State<myApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Home(),
      theme: ThemeData(
          fontFamily: 'roboto',
          textTheme: TextTheme(
            bodyLarge: TextStyle(
              color: LightGreenColor,
              fontFamily: 'roboto',
              fontSize: 25,
            ),
            bodyMedium: const TextStyle(
              color: Colors.black,
              fontFamily: 'roboto',
              fontWeight: FontWeight.w200,
              fontSize: 18,
            ),
            bodySmall: const TextStyle(
              color: Colors.black,
              fontFamily: 'roboto',
              fontWeight: FontWeight.w200,
              fontSize: 14,
            ),
            displayLarge: TextStyle(
              color: LightGreenColor,
              fontFamily: 'roboto',
              fontWeight: FontWeight.w900,
            ),
            displayMedium: TextStyle(
              color: DarkGreenColor,
              fontFamily: 'roboto',
              fontWeight: FontWeight.w400,
              fontSize: 16,
            ),
          ),
          backgroundColor: LightGreenColor,
          floatingActionButtonTheme: FloatingActionButtonThemeData(
            backgroundColor: GreenWhatsAppp,
            iconSize: 30
          )),
    );
  }
}
