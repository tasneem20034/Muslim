import 'package:flutter/material.dart';

class RadioTap extends StatelessWidget {
  const RadioTap({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height:140 ,),
        Image.asset('assets/images/Radiobig.png'),
        SizedBox( height: 30),
        Text(
          'Quran kareem Radio',
          style: Theme.of(context).textTheme.titleSmall,
        ),
        SizedBox( height: 45),
        Image.asset('assets/images/Group 5.png')
      ],
    );
  }
}
