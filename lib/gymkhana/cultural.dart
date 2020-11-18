import 'package:flutter/material.dart';
import 'package:fluttertrial2/cards.dart';
import 'package:fluttertrial2/cultural/culturalsample.dart';

class GymkhanaCultural extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () => Navigator.of(context).pop(),
        ),
        title: const Text('Cultural Council'),
      ),
      body: Cultural(),
      // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}

class Cultural extends StatelessWidget {
  Cultural({Key key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    final double itemHeight = size.height / 10;
    final double itemWidth = size.width / 2;
    // var x = 5.89; // 1/x of height is for each card
    // var y = 3.0 * x; // 1/y of width is for each card
    var tsf1 = 2.5; // textscalefactor
    // var tsf2 = 2.7; //textscalefactor
    // return Container(
    //   // child: Column(
    //   //   mainAxisAlignment: MainAxisAlignment.start,
    //   //   crossAxisAlignment: CrossAxisAlignment.stretch,

    List<Color> mycolourList = List<Color>(5);
    mycolourList[0] = Colors.red;
    mycolourList[1] = Colors.blue;
    mycolourList[2] = Colors.amber;
    mycolourList[3] = Colors.green;
    mycolourList[4] = Colors.orange;
    List<Color> mysplashcolourList = List<Color>(5);
    mysplashcolourList[0] = Colors.red[700];
    mysplashcolourList[1] = Colors.blue[700];
    mysplashcolourList[2] = Colors.amber[700];
    mysplashcolourList[3] = Colors.green[700];
    mysplashcolourList[4] = Colors.orange[700];
    List<Widget> mywidgetList = List<Widget>(18);
    mywidgetList[0] = Culturaldance();
    mywidgetList[1] = Culturalfinearts();
    mywidgetList[2] = Culturalindianmusic();
    mywidgetList[3] = Culturalliterary();
    mywidgetList[4] = Culturaldrama();
    mywidgetList[5] = Culturalquiz();
    mywidgetList[6] = Culturalwesternmusic();

    List<String> myteaxtList = List<String>(18);
    myteaxtList[0] = 'Dance Freakz';
    myteaxtList[1] = 'Fine Arts Club';
    myteaxtList[2] = 'Indian Music Club';
    myteaxtList[3] = 'Literary Club';
    myteaxtList[4] = 'Masquerades';
    myteaxtList[5] = 'Quiz Club';
    myteaxtList[6] = 'Western Music';

    return GridView.count(
      crossAxisCount: 1,
      childAspectRatio: (itemWidth / itemHeight),
      children: List.generate(7, (index) {
        return Container(
          child: MyCard1(
            widget: mywidgetList[index],
            splashcolour: mysplashcolourList[index % 5],
            colour: mycolourList[(index % 5)],
            teaxt: myteaxtList[index],
            tsf: tsf1,
          ),
        );
      }),
    );
  }
}
