import 'package:flutter/material.dart';
import 'package:fluttertrial2/acad/acadsample.dart';

import 'cards.dart';

class Academics extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Academics'),
      ),
      body: AcadStatelessWidget(),
      // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}

class AcadStatelessWidget extends StatelessWidget {
  AcadStatelessWidget({Key key}) : super(key: key);
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
    mywidgetList[0] = CsoTwoOneOne();
    mywidgetList[1] = CsoTwoZeroFour();
    mywidgetList[2] = CseTwoZeroFive();
    mywidgetList[3] = MaTwoZeroTwo();
    mywidgetList[4] = MeoneZeroTwo();
    mywidgetList[5] = Humanities();

    List<String> myteaxtList = List<String>(18);
    myteaxtList[0] = 'CSO 211';
    myteaxtList[1] = 'CSO 204';
    myteaxtList[2] = 'CSE 205';
    myteaxtList[3] = 'MA 202';
    myteaxtList[4] = 'ME 102';
    myteaxtList[5] = 'Humanities';

    return GridView.count(
      crossAxisCount: 1,
      childAspectRatio: (itemWidth / itemHeight),
      children: List.generate(6, (index) {
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
