import 'package:flutter/material.dart';
import ' Female.dart';
import 'Likeis10.dart';
import 'Seen.dart';
import 'home.dart';
import 'Male.dart';
import 'Female.dart';

class BarNavy extends StatefulWidget {
  @override
  _BarNavyState createState() => _BarNavyState();
}

class _BarNavyState extends State<BarNavy> {
  int _selectedIndex = 0;
  final List<Widget> _children = [
    HomePage(),
    LikePage(),
    YearPage(),
    MalePage(),
    FemalePage()
  ];
  PageController _pageController;
  void onTappedBar(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  void initState() {
    super.initState();
    _pageController = PageController();
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _children[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Color(0xffffcc5c),
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.pinkAccent,
        unselectedItemColor: Colors.blueGrey,
        onTap: onTappedBar,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(title: Text('Home'), icon: Icon(Icons.home)),
          BottomNavigationBarItem(
              title: Text('ชอบที่สุด 10/10'),
              icon: Icon(Icons.favorite_border)),
          BottomNavigationBarItem(
            title: Text('เคยรับชม'),
            icon: Icon(Icons.filter_none),
          ),
          BottomNavigationBarItem(
            title: Text('ดาราชายที่ชื่นชอบ'),
            icon: Icon(Icons.people_outline),
          ),
          BottomNavigationBarItem(
            title: Text('ดาราหญิงที่ชื่นชอบ'),
            icon: Icon(Icons.wc),
          ),
        ],
      ),
    );
  }
}
