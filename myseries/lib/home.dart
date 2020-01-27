import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  HomePageState createState() {
    return new HomePageState();
  }
}

class HomePageState extends State<HomePage> with TickerProviderStateMixin {
  double currentOpacity = 0;
  Animation<double> starAnimation;

  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      debugShowCheckedModeBanner: false,
      home: new Scaffold(
        backgroundColor: Color(0xFFFBE9E7),
        appBar: AppBar(
          title: Text("Honey Series"),
          backgroundColor: Colors.redAccent[100],
        ),
        body: new Center(
          child: AnimatedOpacity(
            opacity: currentOpacity,
            duration: Duration(seconds: 1),
            child: Image.asset("assets/icons/Love2.png"),
          ),
        ),
        floatingActionButton: FloatingActionButton(
          child: Icon(Icons.play_arrow),
          onPressed: () {
            // เพิ่ม on pressed
            setState(() {
              currentOpacity = currentOpacity == 0 ? 1 : 0;
            });
          },
          backgroundColor: Color(0xFFFFCDD2),
        ),
      ),
    );
  }
}
// import 'package:flutter/material.dart';

// class MyHomePage extends StatefulWidget {
//   MyHomePage({Key key, this.title}) : super(key: key);

//   final String title;

//   @override
//   _MyHomePageState createState() => _MyHomePageState();
// }

// class _MyHomePageState extends State<MyHomePage> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: DefaultTabController(
//         length: choices.length,
//         child: Scaffold(
//           appBar: AppBar(
//             title: const Text('Honey Series'),
//             bottom: TabBar(
//               isScrollable: true,
//               tabs: choices.map((Choice choice) {
//                 return Tab(
//                   text: choice.title,
//                   icon: Icon(choice.icon),
//                 );
//               }).toList(),
//             ),
//           ),
//           body: TabBarView(
//             children: choices.map((Choice choice) {
//               return Padding(
//                 padding: const EdgeInsets.all(16.0),
//                 child: ChoiceCard(choice: choice),
//               );
//             }).toList(),
//           ),
//         ),
//       ),
//     );
//   }
// }

// class Choice {
//   const Choice({this.title, this.icon});

//   final String title;
//   final IconData icon;
// }

// const List<Choice> choices = const <Choice>[
//   const Choice(title: 'ชอบที่สุด10/10', icon: Icons.directions_walk),
//   const Choice(title: 'เคยรับชม', icon: Icons.directions_walk),
//   const Choice(title: 'พระเอกที่ชื่นชอบ', icon: Icons.directions_walk),
//   const Choice(title: 'นางเอกที่ชื่นชอบ', icon: Icons.directions_walk),
// ];

// class ChoiceCard extends StatelessWidget {
//   const ChoiceCard({Key key, this.choice}) : super(key: key);

//   final Choice choice;

//   @override
//   Widget build(BuildContext context) {
//     final TextStyle textStyle = Theme.of(context).textTheme.display1;
//     return Card(
//       color: Colors.white70,
//       child: Center(
//         child: Column(
//           mainAxisSize: MainAxisSize.min,
//           crossAxisAlignment: CrossAxisAlignment.center,
//           children: <Widget>[
//             Icon(choice.icon, size: 128.0, color: textStyle.color),
//             Text(choice.title, style: textStyle),
//           ],
//         ),
//       ),
//     );
//   }
// }
