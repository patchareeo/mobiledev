import 'package:flutter/material.dart';
import 'package:myseries/home.dart';
import 'package:splashscreen/splashscreen.dart';

void main() {
  runApp(new MaterialApp(
    home: new Myseries(),
  ));
}

class Myseries extends StatefulWidget {
  @override
  _MyseriesState createState() => new _MyseriesState();
}

class _MyseriesState extends State<Myseries> {
  @override
  Widget build(BuildContext context) {
    return new SplashScreen(
        seconds: 5,
        navigateAfterSeconds: new MyApp(),
// title: new Text(
// 'Welcome In SplashScreen',
// style: new TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0),
// ),
        image: new Image.asset('assets/icons/thisLove.png'),
        title: Text(
          'Honey series',
          style:
              TextStyle(fontWeight: FontWeight.bold, height: 1.5, fontSize: 30),
        ),
        backgroundColor: Colors.white70,
        styleTextUnderTheLoader: new TextStyle(),
        photoSize: 100.0,
        onClick: () => print("Flutter Egypt"),
        loaderColor: Colors.black);
  }
}
