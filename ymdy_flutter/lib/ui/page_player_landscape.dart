import 'package:flutter/material.dart';

/// 横屏播放器
class PlayerLandscape extends StatefulWidget {
  @override
  _PlayerLandscape createState() => _PlayerLandscape();
}

class _PlayerLandscape extends State<PlayerLandscape> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'You have pushed the button this many times:',
            ),
          ],
        ),
      ),
    );
  }
}