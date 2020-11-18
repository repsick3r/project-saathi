import 'package:flutter/material.dart';
import 'package:fluttertrial2/cards.dart';
import 'package:fluttertrial2/scienceandtechnology/aeromodelling.dart';
// import 'package:fluttertrial2/scienceandtechnology/astronomy.dart';
// import 'package:fluttertrial2/scienceandtechnology/business.dart';
// import 'package:fluttertrial2/scienceandtechnology/cops.dart';
// import 'package:fluttertrial2/scienceandtechnology/csi.dart';
// import 'package:fluttertrial2/scienceandtechnology/robotics.dart';
// import 'package:fluttertrial2/scienceandtechnology/sae.dart';

class GymkhanaScienceTechnology extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () => Navigator.of(context).pop(),
        ),
        title: const Text('Science and Technology Council'),
      ),
      body: ScienceTechnology(),
      // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}

class ScienceTechnology extends StatelessWidget {
  ScienceTechnology({Key key}) : super(key: key);
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
    mywidgetList[0] = Sntcamc();
    mywidgetList[1] = Sntcastronomy();
    mywidgetList[2] = Sntcbusiness();
    mywidgetList[3] = Sntccops();
    mywidgetList[4] = Sntccsi();
    mywidgetList[5] = Sntcrobotics();
    mywidgetList[6] = Sntcsae();

    List<String> myteaxtList = List<String>(18);
    myteaxtList[0] = 'Aero Modelling Club';
    myteaxtList[1] = 'Astronomy Club';
    myteaxtList[2] = 'Business Club';
    myteaxtList[3] = 'Club of Programmers';
    myteaxtList[4] = 'Club of Sustainability and Innovation';
    myteaxtList[5] = 'Robotics Club';
    myteaxtList[6] = 'Society of Automotive Engineers';

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
