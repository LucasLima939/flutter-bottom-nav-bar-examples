import 'package:bottom_navy_bar/bottom_navy_bar.dart';
import 'package:flutter/material.dart';

class Example3 extends StatefulWidget {
  const Example3({Key? key}) : super(key: key);

  @override
  State<Example3> createState() => _Example3State();
}

class _Example3State extends State<Example3> {
  int _selectedIndex = 2;
  
  @override
  Widget build(BuildContext context) {
    return BottomNavyBar(
      selectedIndex: _selectedIndex,
      showElevation: true, // use this to remove appBar's elevation
      onItemSelected: (index) {
        setState(() {
          _selectedIndex = index;
        });
      },

      items: [
        BottomNavyBarItem(
          icon: const Icon(Icons.apps),
          title: const Text('Home'),
          activeColor: Colors.red,
        ),
        BottomNavyBarItem(
            icon: const Icon(Icons.people),
            title: const Text('Users'),
            activeColor: Colors.purpleAccent),
        BottomNavyBarItem(
            icon: const  Icon(Icons.message),
            title: const Text('Messages'),
            activeColor: Colors.pink),
        BottomNavyBarItem(
            icon: const Icon(Icons.settings),
            title: const Text('Settings'),
            activeColor: Colors.blue),
      ],
    );
  }
}
