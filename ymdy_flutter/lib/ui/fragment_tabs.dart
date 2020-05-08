import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:package_info/package_info.dart';
import 'package:ymdy/const/api.dart';
import 'package:ymdy/http/http_request.dart';
import 'package:ymdy/i18n/i18n.dart';
import 'package:ymdy/models/video_type_entity.dart';

import 'fragment_tabs_item.dart';

class TabsScreen extends StatefulWidget {
  @override
  _TabsScreen createState() => _TabsScreen();
}

class _TabsScreen extends State<TabsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: new FutureBuilder<VideoTypeEntity>(
        future: getVideoType(),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            //有数据,create pageview by cate
            return createCatePages(context, snapshot.data);
          } else if (snapshot.hasError) {
            return new Text("${snapshot.error}");
          }
          // By default, show a loading spinner
          return new CircularProgressIndicator();
        },
      )),
    );
  }

  /// 接口请求数据
  Future<VideoTypeEntity> getVideoType() async {
    var url = Api.baseUrl + "api/videoType/getAllToV2";
    final response = await YMHttpRequest.request(url);
    var responseBody = new VideoTypeEntity.fromJson(response);
    return responseBody;
  }

  ///创建分类tabbar
  StatefulWidget createCatePages(BuildContext context, VideoTypeEntity entity) {
    TabController tabController = TabController(
      length: entity.data.resultArray.length,
      vsync: ScrollableState(),
    );

    TextEditingController textEditingController = TextEditingController();

    return Scaffold(
      appBar: PreferredSize(
          child: AppBar(
            backgroundColor: Colors.white,
            title: Row(
              children: <Widget>[
                Image.asset(
                  "images/home_title_word.png",
                  width: 70.0,
                  height: 35.0,
                ),
                Icon(
                  Icons.search,
                  color: Colors.grey,
                ),
                Expanded(
                  child: Container(
                    alignment: Alignment.center,
                    child: TextField(
                      controller: textEditingController,
                      decoration: new InputDecoration(
                          contentPadding: EdgeInsets.only(left: 10),
                          hintText: currentI18n.appName,
                          border: InputBorder.none),
                      // onChanged: onSearchTextChanged,
                    ),
                  ),
                ),
              ],
            ),
            bottom: TabBar(
              tabs: entity.data.resultArray.map((f) {
                return Text(f.name);
              }).toList(),
              controller: tabController,
              indicatorColor: Colors.deepPurpleAccent,
              indicatorSize: TabBarIndicatorSize.tab,
              isScrollable: true,
              labelColor: Colors.deepPurpleAccent,
              unselectedLabelColor: Colors.deepPurple,
              indicatorWeight: 4.0,
              labelStyle: TextStyle(height: 2),
            ),
          ),
          preferredSize: Size.fromHeight(80)),
      body: TabBarView(
        controller: tabController,
        children: entity.data.resultArray.map((f) {
          return CategrayItem(
            categray: f,
          );
        }).toList(),
      ),
    );
  }
}


