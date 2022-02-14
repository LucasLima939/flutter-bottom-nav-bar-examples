import 'package:flutter/material.dart';
import 'package:flutter_bottom_bar/bottom_nav_bar/example_1.dart';
import 'package:flutter_bottom_bar/bottom_nav_bar/example_2.dart';

import 'bottom_nav_bar/example_3.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Bottom Nav Bar Examples',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: const HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final _bottomNavBarList = <Widget>[const Example1(), const Example2(), const Example3()];
  final _colorsList = <Color>[Colors.orange, Colors.blue, Colors.purple];
  int index = 0;
  Color? buttonColor;
  late Widget _bottomNavBar;

  @override
  void initState() {
    changeBottomNavBar();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      body: Container(
        decoration: const BoxDecoration(
            gradient: LinearGradient(
          begin: Alignment.topRight,
          end: Alignment.bottomLeft,
          colors: [
            Colors.blue,
            Colors.red,
          ],
        )),
        child: Center(
            child: ElevatedButton(
                onPressed: () {
                  setState(() {
                    changeBottomNavBar();
                  });
                },
                child: const Text('Trocar'),
                style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all<Color>(
                        buttonColor ?? Colors.blue)))),
      ),
      bottomNavigationBar: _bottomNavBar,
    );
  }

  changeBottomNavBar() {
    buttonColor = _colorsList[index];
    _bottomNavBar = _bottomNavBarList[index];
    if (index >= 2) {
      index = 0;
    } else {
      index++;
    }
  }
}
