import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_ijkplayer/flutter_ijkplayer.dart';
import 'package:ymdy/const/video_datasource.dart';
import 'package:ymdy/i18n/i18n.dart';
import 'package:ymdy/utils/options_utils.dart';

/// 竖屏播放器
class PlayerPotrait extends StatefulWidget {
  PlayerPotrait({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _PlayerPotrait createState() => _PlayerPotrait();
}

class _PlayerPotrait extends State<PlayerPotrait> {
  IjkMediaController mediaController = IjkMediaController();

  @override
  void initState() {
    super.initState();
    OptionUtils.addDefaultOptions(mediaController);
    _playInput();
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final width = size.width;

    return Scaffold(
      body: ListView(
        children: <Widget>[
          Container(
            height: width / 16 * 9,
            child: IjkPlayer(
              mediaController: mediaController,
            ),
          ),
          Container(
              child: Padding(
            padding: EdgeInsets.all(10.0),
            child: Column(

              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text("我是余欢水",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18.0, // 文字大小
                          color: Colors.black, // 文字颜色
                        )),
                    Text("简介",
                        textAlign: TextAlign.right,
                        style: TextStyle(
                          fontSize: 14.0, // 文字大小
                        )),
                  ],
                ),
                Container(
                  alignment: Alignment.topLeft,
                  padding: EdgeInsets.fromLTRB(0, 10, 0, 0),
                  child: Text("2020-04-26",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 13.0, // 文字大小
                      )),
                ),
                Container(
                  alignment: Alignment.topLeft,
                  padding: EdgeInsets.fromLTRB(0, 10, 0, 0),
                  child: Text(
                      "\t\t\t\t\t\t正午阳光与爱奇艺达成合作,退出基于余耕(本名王兵)小说《如果没有明天》改编的超级网剧《我是余欢水》,由《都挺好》编剧王三毛、王磊父子改编,孙魔龙指导,侯洪亮制片。",
                      style: TextStyle(
                        fontSize: 14.0, // 文字大小
                      )),
                ),

              ],
            ),
          )),
        ],
      ),
    );
  }

  void _playInput() async {
    await mediaController.setDataSource(
      VideoDataSource.springBootMenuM3u8,
      autoPlay: true,
    );
  }

  @override
  void deactivate() {
    mediaController.pause();
    super.deactivate();
  }

  @override
  void dispose() {
    mediaController.dispose();
    super.dispose();
  }
}
