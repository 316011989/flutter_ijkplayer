import 'package:flutter/material.dart';

import 'player_portrait.dart';

class TabsScreen extends StatefulWidget {

  @override
  _TabsScreen createState() => _TabsScreen();
}

class _TabsScreen extends State<TabsScreen> {
  @override
  void initState() {
    super.initState();

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            FlatButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (_) => PlayerPotrait()));
              },
              child: Text("splash页面,点击进入竖屏播放页"),
            ),
          ],
        ),
      ),
    );
  }
}
