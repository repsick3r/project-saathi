import 'package:flutter/material.dart';
import 'package:fluttertrial2/gymkhana/filmandmedia.dart';
import 'package:fluttertrial2/gymkhana/gamesandsports.dart';
import 'package:fluttertrial2/gymkhana/scienceandtechnology.dart';
import 'package:fluttertrial2/gymkhana/socialservice.dart';
import 'cards.dart';
import 'package:fluttertrial2/gymkhana/cultural.dart';

class Gymkhana extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Gymkhana'),
      ),
      body: GymkhanaStatelessWidget(),
      // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}

class GymkhanaStatelessWidget extends StatelessWidget {
  GymkhanaStatelessWidget({Key key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;

    /*24 is for notification bar on Android*/
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
    mywidgetList[0] = GymkhanaCultural();
    mywidgetList[1] = GymkhanaFilmMedia();
    mywidgetList[2] = GymkhanaGamesSports();
    mywidgetList[3] = GymkhanaScienceTechnology();
    mywidgetList[4] = GymkhanaSocialService();

    List<String> myteaxtList = List<String>(18);
    myteaxtList[0] = 'Cultural Council';
    myteaxtList[1] = 'Film and Media Council';
    myteaxtList[2] = 'Games and Sports Council';
    myteaxtList[3] = 'Science and Technology';
    myteaxtList[4] = 'Social Service';

    return GridView.count(
      crossAxisCount: 1,
      childAspectRatio: (itemWidth / itemHeight),
      children: List.generate(5, (index) {
        return Container(
          height: itemHeight,
          child: MyCard1(
            haight: itemHeight,
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
