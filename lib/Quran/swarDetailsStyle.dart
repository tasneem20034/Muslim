import 'package:flutter/material.dart';
import 'package:muslim/Quran/SwarDetails.dart';

class swarDetailsStyle extends StatelessWidget {
  String content;
  int index;

  swarDetailsStyle({required this.content, required this.index});

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Text(
      '$content($index)',
      style: Theme.of(context).textTheme.titleLarge,
      textAlign: TextAlign.center,
      textDirection: TextDirection.rtl,
    ),
        ));
  }
}
