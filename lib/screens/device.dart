import 'package:flutter/material.dart';
import 'home.dart';
import 'competences.dart';
import 'xp.dart';
import 'school.dart';
import 'info.dart';
import 'package:flutter/material.dart';

class DeviceScreen extends StatefulWidget {
  @override
  _DeviceScreenState createState() => _DeviceScreenState();
}

class _DeviceScreenState extends State<DeviceScreen> {
  int _currentScreen = 0;
  final List<Widget> _screenList = [
    HomeScreen(),
    xpScreen(),
    CategoryDisplay(),
    SchoolScreen(),
    ListContent(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Mahylan CV"),
        actions: <Widget>[
          IconButton(
            icon: Image.asset('X.png'),
            onPressed: () {},
          ),
          IconButton(
            icon: Image.asset('lk.png'),
            onPressed: () {},
          ),
          IconButton(
            icon: Image.asset('fb.png'),
            onPressed: () {},
          ),
        ],
      ),
      body: _screenList[_currentScreen],
      bottomNavigationBar: BottomNavigationBar(
        onTap: onTabTapped,
        currentIndex: _currentScreen,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
            backgroundColor: Colors.grey,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.list),
            label: 'Expérience',
            backgroundColor: Colors.grey,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.mouse),
            label: 'Compétences',
            backgroundColor: Colors.grey,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.school),
            label: 'Formation',
            backgroundColor: Colors.grey,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.info),
            label: 'Infos',
            backgroundColor: Colors.grey,
          ),
        ],
      ),
    );
  }

  void onTabTapped(int index) {
    setState(() {
      _currentScreen = index;
    });
  }
}
