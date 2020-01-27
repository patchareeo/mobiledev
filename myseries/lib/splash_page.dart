import 'package:flutter/material.dart';
import 'package:splashscreen/splashscreen.dart';
import 'bar.dart';

class SplashPage extends StatefulWidget {
  @override
  _SplashPageState createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  Widget build(BuildContext context) {
    return SplashScreen(
        seconds: 3,
        navigateAfterSeconds: BarNavy(),
        title: Text(
          'Honey series',
          style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 30.0,
              color: Colors.black54,
              fontStyle: FontStyle.italic),
        ),
        image: Image.asset('assets/icons/thisLove.png'),
        backgroundColor: Colors.grey[200],
        styleTextUnderTheLoader: TextStyle(color: Colors.deepPurple),
        photoSize: 150.0,
        loaderColor: Colors.black26);
  }
}
