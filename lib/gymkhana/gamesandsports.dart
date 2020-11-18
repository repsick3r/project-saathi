import 'package:flutter/material.dart';
import 'package:fluttertrial2/cards.dart';
import 'package:fluttertrial2/gamesandsports/gamesandsportssample.dart';

class GymkhanaGamesSports extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () => Navigator.of(context).pop(),
        ),
        title: const Text('Games and Sports Council'),
      ),
      body: GamesSports(),
      // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}

class GamesSports extends StatelessWidget {
  GamesSports({Key key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    // var size = MediaQuery.of(context).size;
    // final double itemHeight = size.height / 10;
    // final double itemWidth = size.width / 2;
    // var x = 5.89; // 1/x of height is for each card
    // var y = 3.0 * x; // 1/y of width is for each card
    var tsf1 = 1.95; // textscalefactor
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
    mywidgetList[0] = Gasaquatics();
    mywidgetList[1] = Gasathletics();
    mywidgetList[2] = Gasbadminton();
    mywidgetList[3] = Gasbasketball();
    mywidgetList[4] = Gasboxing();
    mywidgetList[5] = Gaschess();
    mywidgetList[6] = Gascricket();
    mywidgetList[7] = Gasfootball();
    mywidgetList[8] = Gashandball();
    mywidgetList[9] = Gashockey();
    mywidgetList[10] = Gaskabaddi();
    mywidgetList[11] = Gaskhokho();
    mywidgetList[12] = Gassquash();
    mywidgetList[13] = Gastabletennis();
    mywidgetList[14] = Gastaekwondo();
    mywidgetList[15] = Gastennis();
    mywidgetList[16] = Gasvolleyball();
    mywidgetList[17] = Gasweightlifting();
    List<String> myteaxtList = List<String>(18);
    myteaxtList[0] = 'Aquatics';
    myteaxtList[1] = 'Athletics';
    myteaxtList[2] = 'Badminton';
    myteaxtList[3] = 'Basketball';
    myteaxtList[4] = 'Boxing';
    myteaxtList[5] = 'Chess';
    myteaxtList[6] = 'Cricket';
    myteaxtList[7] = 'Football';
    myteaxtList[8] = 'Handball';
    myteaxtList[9] = 'Hockey';
    myteaxtList[10] = 'Kabaddi';
    myteaxtList[11] = 'Kho Kho';
    myteaxtList[12] = 'Squash';
    myteaxtList[13] = 'Table Tennis';
    myteaxtList[14] = 'Taekwondo';
    myteaxtList[15] = 'Tennis';
    myteaxtList[16] = 'Volleyball';
    myteaxtList[17] = 'Weight Lifting';
    return GridView.count(
      crossAxisCount: 3,
      //childAspectRatio: (itemWidth / itemHeight),
      children: List.generate(18, (index) {
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
