import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:muslim/Mytheme.dart';
import 'package:muslim/Quran/swarDetailsStyle.dart';

class SwarDetails extends StatefulWidget {
  static const routeName = 'SwarDetails';

  @override
  State<SwarDetails> createState() => _SwarDetailsState();
}

class _SwarDetailsState extends State<SwarDetails> {
  List<String> verses = [];

  @override
  Widget build(BuildContext context) {
    var args = ModalRoute.of(context)?.settings.arguments as SwarDetailsArgs;
    if (verses.isEmpty) {
      loadFile(args.index);
    }
    return Stack(
      children: [
        Image.asset('assets/images/bg3.png'),
        Scaffold(
          appBar: AppBar(
            title: Text(
              '${args.name}',
              style: Theme.of(context).textTheme.titleSmall,
            ),
          ),
          body: verses.length == 0
              ? Center(
                  child: CircularProgressIndicator(
                  color: Theme.of(context).primaryColor,
                ))
              : Container(
                  decoration: BoxDecoration(
                      color: myTheme.White,
                      borderRadius: BorderRadius.circular(20)),
                  margin: EdgeInsets.symmetric(
                      horizontal: MediaQuery.of(context).size.width * 0.06,
                      vertical: MediaQuery.of(context).size.height*0.08),
                  child: ListView.separated(
                    separatorBuilder: (context, index) {
                      return Divider(
                        color: Theme.of(context).primaryColor,
                        thickness: 2,
                      );
                    },
                    itemBuilder: (context, index) {
                      return swarDetailsStyle(
                        content: verses[index],
                        index: index,
                      );
                    },
                    itemCount: verses.length,
                  ),
                ),
        )
      ],
    );
  }

  void loadFile(int index) async {
    String content =
        await rootBundle.loadString('assets/file/${index + 1}.txt');
    List<String> lines = content.split('\n');
    verses = lines;
    setState(() {});
  }
}

class SwarDetailsArgs {
  String name;
  int index;

  SwarDetailsArgs({required this.name, required this.index});
}
