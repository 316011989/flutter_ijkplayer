import 'package:flutter/material.dart';

class DiscoverScreen extends StatefulWidget{
  DiscoverScreen({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _DiscoverScreen createState() => _DiscoverScreen();

}
class _DiscoverScreen  extends State<DiscoverScreen> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: Text('HOME'),
      ),
    );
  }
}