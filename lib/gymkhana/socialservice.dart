import 'package:flutter/material.dart';
import 'package:fluttertrial2/cards.dart';
import 'package:fluttertrial2/socialservice/healthandhygiene.dart';
// import 'package:fluttertrial2/socialservice/kashiutkarsh.dart';
// import 'package:fluttertrial2/socialservice/sahyog.dart';
// import 'package:fluttertrial2/socialservice/socialproject.dart';

class GymkhanaSocialService extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () => Navigator.of(context).pop(),
        ),
        title: const Text('Social Service Council'),
      ),
      body: SocialService(),
      // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}

class SocialService extends StatelessWidget {
  SocialService({Key key}) : super(key: key);
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
    mywidgetList[0] = Socialkashi();
    mywidgetList[1] = Socialhealth();
    mywidgetList[2] = Socialproject();
    mywidgetList[3] = Socialsahyog();

    List<String> myteaxtList = List<String>(18);
    myteaxtList[0] = 'Kashi Utkarsh Club';
    myteaxtList[1] = 'Health & Hygiene Club';
    myteaxtList[2] = 'Social Project Club';
    myteaxtList[3] = 'Sahyog Club';

    return GridView.count(
      crossAxisCount: 1,
      childAspectRatio: (itemWidth / itemHeight),
      children: List.generate(4, (index) {
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
