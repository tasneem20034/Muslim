import 'package:flutter/material.dart';
import 'package:muslim/Mytheme.dart';

class SebhaTap extends StatefulWidget {
  const SebhaTap({super.key});

  @override
  State<SebhaTap> createState() => _SebhaTapState();
}

class _SebhaTapState extends State<SebhaTap> {
  double turns = 0.0;
  int tap = 1;
  int index = 0;
  List<String> zekr = [
    "سبحان الله",
    "الحمدلله",
    "الله اكبر ",
  ];

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Image.asset(
            'assets/images/head of seb7a.png',
          ),
          InkWell(
            onTap: () {
              turns += 1 / 10;
              if (tap == 32) {
                if (index == zekr.length-1) {
                  index = 0;
                  tap = 0;
                } else {
                    index++;
                    tap = 0;
                  }
              } else {
                tap++;
              }
              setState(() {

              });
            },
            child: AnimatedRotation(
                turns: turns,
                duration: Duration(seconds: 1),
                child: Image.asset('assets/images/body of seb7a.png')),
          ),
          SizedBox(height: 30),
          Text(
            'Num of Tasbeeh',
            style: Theme
                .of(context)
                .textTheme
                .titleSmall,
          ),
          SizedBox(
            height: 30,
          ),
          Container(
            height: 65,
            width: 60,
            child: Center(
                child: Text(
                  '$tap',
                  style: Theme
                      .of(context)
                      .textTheme
                      .titleLarge,
                )),
            decoration: BoxDecoration(
                color: myTheme.LightBrownColor,
                borderRadius: BorderRadius.circular(20)),
          ),
          SizedBox(height: 20,),
          Container(
            height: 65,
            width: 150,
            child: Center(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    zekr[index],
                    style:Theme.of(context).textTheme.titleMedium?.copyWith(color: myTheme.White),
                  ),
                )),
            decoration: BoxDecoration(
                color: myTheme.BrownColor,
                borderRadius: BorderRadius.circular(30)),
          )
        ],
      ),
    );
  }
}
