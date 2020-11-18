import 'package:flutter/material.dart';
import 'package:fluttertrial2/slidingpanel.dart';

class Socialhealth extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MyPanel(
      colour: Colors.blue,
      teaxt: "Health & Hygiene Club",
    );
  }
}

class Socialkashi extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MyPanel(
      colour: Colors.red,
      teaxt: "Kashi Utkarsh Club",
    );
  }
}

class Socialsahyog extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MyPanel(
      colour: Colors.green,
      teaxt: "Sahyog Club",
    );
  }
}

class Socialproject extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MyPanel(
      colour: Colors.amber,
      teaxt: "Social Project Club",
    );
  }
}
