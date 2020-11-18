import 'package:flutter/material.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';

// class SizeConfig {
//   static MediaQueryData _mediaQueryData;
//   static double screenWidth;
//   static double screenHeight;

//   void init(BuildContext context) {
//     _mediaQueryData = MediaQuery.of(context);
//     screenWidth = _mediaQueryData.size.width;
//     screenHeight = _mediaQueryData.size.height;
//   }
// }

class MyPanel extends StatelessWidget {
  MyPanel({
    this.colour,
    this.teaxt,
  });

  final Color colour;
  final String teaxt;

  @override
  Widget build(BuildContext context) {
    // SizeConfig().init(context);
    BorderRadiusGeometry radius = BorderRadius.only(
      topLeft: Radius.circular(24.0),
      topRight: Radius.circular(24.0),
    );

    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () => Navigator.of(context).pop(),
        ),
        title: Text(this.teaxt),
        backgroundColor: this.colour,
      ),
      body: SlidingUpPanel(
        panel: Center(
          child: Text("This is the sliding Widget"),
        ),
        collapsed: Container(
          // height: SizeConfig.screenHeight / 2,
          decoration: BoxDecoration(color: this.colour, borderRadius: radius),
          child: Center(
            child: Text(
              "Description",
              textScaleFactor: 2,
              textAlign: TextAlign.end,
              style: TextStyle(color: Colors.white),
            ),
          ),
        ),
        body: Center(
          child: Text("This is the Widget behind the sliding panel"),
        ),
        borderRadius: radius,
      ),
    );
  }
}
