import 'package:flutter/material.dart';

class MineScreen extends StatefulWidget{
  MineScreen({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _MineScreen createState() => _MineScreen();

}
class _MineScreen  extends State<MineScreen> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: Text('HOME'),
      ),
    );
  }
}