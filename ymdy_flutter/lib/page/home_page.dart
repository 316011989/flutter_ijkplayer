import 'package:flutter/material.dart';
import 'package:ymdy/widgets/BottomNavigationWidget.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({Key key, this.title}) : super(key: key);
  final String title;

  @override
  HomeScreenState createState() => HomeScreenState();
}

class HomeScreenState extends State<HomeScreen> {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: BottomNavigationWidget());
  }
}
