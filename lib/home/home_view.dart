import 'package:flutter/material.dart';
import 'package:econsult/constans.dart';
import 'package:econsult/beranda/beranda_view.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => new _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _bottomNavCurrentIndex = 0;
  List<Widget> _container = [
    new BerandaPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: _container[_bottomNavCurrentIndex],
      bottomNavigationBar: _buildBottomNavigation()
    );
  }

  Widget _buildBottomNavigation(){
  var bottomNavigationBarItem = BottomNavigationBarItem(
            activeIcon: new Icon(
              Icons.mail,
              color: GojekPalette.green,
            ),
            icon: new Icon(
              Icons.mail,
              color: Colors.grey,
            ),
            title: new Text('Konsultasi'),
          );
  return new BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        onTap: (index) {
          setState(() {
            _bottomNavCurrentIndex = index;
          });
        },
        currentIndex: _bottomNavCurrentIndex,
        items: [
          BottomNavigationBarItem(
            activeIcon: new Icon(
              Icons.home,
              color: GojekPalette.green,
            ),
            icon: new Icon(
              Icons.home,
              color: Colors.grey,
            ),
            title: new Text(
              'Beranda',
            ),
          ),
          BottomNavigationBarItem(
            activeIcon: new Icon(
              Icons.assignment,
              color: GojekPalette.green,
            ),
            icon: new Icon(
              Icons.assignment,
              color: Colors.grey,
            ),
            title: new Text('Artikel'),
          ),
          bottomNavigationBarItem,

        ],
      );
  }
}
