import 'package:flutter/material.dart';
import 'package:muslim/Hadeeth/HadeethTap.dart';
import 'package:muslim/Quran/quranTap.dart';
import 'package:muslim/radio/radioTap.dart';
import 'package:muslim/sebha/SebhaTap.dart';

class HomeScreen extends StatefulWidget {
  static const routeName = 'Homescreen';

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int selectedIndex=0;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image.asset('assets/images/bg3.png'),
        Scaffold(
          appBar: AppBar(
            title: Text(
              'Islami',
              style: Theme.of(context).textTheme.titleSmall,
            ),
          ),
          bottomNavigationBar:Theme(
            data: Theme.of(context)
                .copyWith(canvasColor: Theme.of(context).primaryColor),
            child: BottomNavigationBar(
                currentIndex:selectedIndex,onTap: (index){
                  selectedIndex=index;
                  setState(() {

                  });
            },items: [
              BottomNavigationBarItem(
                  icon: Image.asset('assets/images/radio.png'),label:"Radio"),
              BottomNavigationBarItem(
                  icon: Image.asset('assets/images/sebha.png'),label:"Radio"),
              BottomNavigationBarItem(
                  icon: Image.asset('assets/images/quran-quran-svgrepo-com.png'),label:"Radio"),
              BottomNavigationBarItem(
                  icon: Image.asset('assets/images/quran.png'),label:"Radio")

            ]),
          ),body: taps[selectedIndex],
        )
      ],
    );
  }
}
List<Widget>taps=[
  RadioTap(),SebhaTap(),HadeethTap(),QuranTap()
];
