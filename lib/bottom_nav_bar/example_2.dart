import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';

class Example2 extends StatelessWidget {
  const Example2({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CurvedNavigationBar(
      backgroundColor: Colors.transparent,
      items: const [
      Icon(Icons.add, size: 30, color: Colors.blue),
      Icon(Icons.list, size: 30, color: Colors.blue),
      Icon(Icons.home, size: 30, color: Colors.blue),
      Icon(Icons.notifications, size: 30, color: Colors.blue),
      Icon(Icons.person, size: 30, color: Colors.blue),
      ],
      
      
    );
  }
}