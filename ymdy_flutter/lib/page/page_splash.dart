import 'package:flutter/material.dart';

import 'player_portrait.dart';

class SplashPage extends StatefulWidget {
  SplashPage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _SplashPage createState() => _SplashPage();
}

class _SplashPage extends State<SplashPage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            FlatButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (_) => PlayerPotrait()));
              },
              child: Text("splash页面,点击进入竖屏播放页"),
            ),
          ],
        ),
      ),
    );
  }
}
