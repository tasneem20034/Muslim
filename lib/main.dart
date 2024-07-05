import 'package:flutter/material.dart';
import 'package:muslim/Home.dart';
import 'package:muslim/Mytheme.dart';
import 'package:muslim/Quran/SwarDetails.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false,
      initialRoute:HomeScreen.routeName ,
      routes:{
      HomeScreen.routeName:(context)=>HomeScreen(),
        SwarDetails.routeName:(context)=>SwarDetails(),
      },
      theme: myTheme.lightTheme,

    );
  }
}