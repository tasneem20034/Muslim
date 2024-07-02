import 'package:flutter/material.dart';
import 'package:muslim/Home.dart';

void main() {
  runApp(myApp());
}

class myApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false,
      initialRoute:HomeScreen.routeName ,
      routes:{
      HomeScreen.routeName:(context)=>HomeScreen(),
      },
    );
  }
}