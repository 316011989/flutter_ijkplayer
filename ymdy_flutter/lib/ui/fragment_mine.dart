import 'package:flutter/material.dart';
import 'package:ymdy/i18n/i18n.dart';

class MineScreen extends StatefulWidget{

  @override
  _MineScreen createState() => _MineScreen();

}
class _MineScreen  extends State<MineScreen> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: Text(currentI18n.mineScreenTitle),
      ),
    );
  }
}