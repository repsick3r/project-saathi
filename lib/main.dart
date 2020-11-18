import 'package:flutter/material.dart';
import 'package:fluttertrial2/academicshome.dart';
import 'package:fluttertrial2/gymkhanahome.dart';

void main() {
  runApp(MaterialApp(home: Houser()));
  // runApp(MaterialApp(home: Gymkhana()));
}

class Houser extends StatefulWidget {
  @override
  HouserState createState() {
    return new HouserState();
  }
}

class HouserState extends State<Houser> {
  int _currentIndex = 1;

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      bottomNavigationBar: new BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: _currentIndex,
        onTap: (newIndex) => setState(() {
          _currentIndex = newIndex;
        }),
        items: [
          new BottomNavigationBarItem(
              icon: new Icon(Icons.explore), title: new Text("Gymkhana")),
          new BottomNavigationBarItem(
              icon: new Icon(Icons.school), title: new Text("Academics")),
          new BottomNavigationBarItem(
              icon: new Icon(Icons.store_mall_directory),
              title: new Text("Feed")),
          new BottomNavigationBarItem(
              icon: new Icon(Icons.track_changes), title: new Text("Tracking")),
          new BottomNavigationBarItem(
              icon: new Icon(Icons.settings), title: new Text("Settings")),
        ],
      ),
      body: new IndexedStack(
        index: _currentIndex,
        children: <Widget>[
          new Gymkhana(),
          new Academics(),
          //MOHIT  add your functions here !!!!!!.
          //new feed(),
          //new tracking(),
          //new settings(),
        ],
      ),
    );
  }
}
