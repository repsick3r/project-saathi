import 'package:flutter/material.dart';
import 'package:fluttertrial2/slidingpanel.dart';

class Fmcanimation extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MyPanel(
      colour: Colors.red,
      teaxt: "Animation Club",
    );
  }
}

class Fmccinema extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MyPanel(
      colour: Colors.blue,
      teaxt: "Cinematography Club",
    );
  }
}

class Fmcdesign extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MyPanel(
      colour: Colors.amber,
      teaxt: "Design Club",
    );
  }
}

class Fmcmedia extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MyPanel(
      colour: Colors.green,
      teaxt: "Media Club",
    );
  }
}

class Fmcphotography extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MyPanel(
      colour: Colors.orange,
      teaxt: "Photography Club",
    );
  }
}

class Fmcsocial extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MyPanel(
      colour: Colors.red,
      teaxt: "Social Outreach Club",
    );
  }
}
