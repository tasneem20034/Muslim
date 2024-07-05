import 'package:flutter/material.dart';
import 'package:muslim/Quran/SwarDetails.dart';

class SwarNames extends StatelessWidget {
  String name;
  int index;

  SwarNames({required this.name,required this.index});

  @override
  Widget build(BuildContext context) {
    return Center(
        child: InkWell(onTap:(){Navigator.of(context).pushNamed(SwarDetails.routeName,arguments: SwarDetailsArgs(name: name, index: index));} ,
            child: Text(name, style: Theme.of(context).textTheme.titleLarge)));
  }
}
