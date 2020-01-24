import 'package:flutter/material.dart';

class AboutMePage extends StatefulWidget {
  AboutMePage({Key key}) : super(key: key);

  @override
  AboutMePageState createState() => new AboutMePageState();
}

class AboutMePageState extends State<AboutMePage> {
  double size = 200;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.pink[400],
      appBar: AppBar(
        title: Text("animation"),
        backgroundColor: Colors.redAccent,
      ),
      body: Center(
          child: AnimatedContainer(
        // เพิ่ม
        width: size, //
        height: size, //
        color: Colors.orange[400], //
        duration: Duration(milliseconds: 500), //
      )),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.play_arrow),
        onPressed: () {
          setState(() {
            size = size + 50; // เพิ่ม
          });
        },
      ),
    );
  }
}
