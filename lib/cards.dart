import 'package:flutter/material.dart';

class SizeConfig {
  static MediaQueryData _mediaQueryData;
  static double screenWidth;
  static double screenHeight;

  void init(BuildContext context) {
    _mediaQueryData = MediaQuery.of(context);
    screenWidth = _mediaQueryData.size.width;
    screenHeight = _mediaQueryData.size.height;
  }
}

class MyCard1 extends StatelessWidget {
  MyCard1(
      {this.widget,
      this.splashcolour,
      this.haight,
      this.colour,
      this.teaxt,
      this.tsf});
  final Widget widget;
  final Color splashcolour;
  final double haight;
  final Color colour;
  final String teaxt;

  final double tsf;
  @override
  Widget build(BuildContext context) {
    // SizeConfig().init(context);
    return Card(
      //  height: this.haight,
      child: InkWell(
        splashColor: this.splashcolour,
        onTap: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => this.widget,
              ));
        },
        child: Ink(
            height: this.haight,
            color: this.colour,
            child: Center(
              child: Text(
                this.teaxt,
                textScaleFactor: tsf,
              ),
            )),
      ),
    );
  }
}
