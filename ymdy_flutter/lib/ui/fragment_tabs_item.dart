import 'package:flutter/material.dart';
import 'package:ymdy/const/api.dart';
import 'package:ymdy/http/http_request.dart';
import 'package:ymdy/models/topic_list_entity.dart';
import 'package:ymdy/models/video_type_entity.dart';

class CategrayItem extends StatefulWidget {
  final VideoTypesList categray;

  CategrayItem({Key key, this.categray}) : super(key: key);

  @override
  _CategrayItem createState() => _CategrayItem(categray);
}

class _CategrayItem extends State<CategrayItem> {
  final VideoTypesList categray;

  _CategrayItem(this.categray);

  @override
  Widget build(BuildContext context) {
    getVideoType(categray,0);
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              categray.name,
            ),
          ],
        ),
      ),
    );
  }

  ///请求数据
  Future<TopicListEntity> getVideoType(VideoTypesList categray, int current) async {
    final int pageSize = 10;
    var url = Api.baseUrl + "api/videoTopic/getTopicByTypeId";
    final response = await YMHttpRequest.request(url, params: {
      "size": pageSize,
      "typeId": categray.id,
      "current": current,
    });
    var responseBody = new TopicListEntity.fromJson(response);
    return responseBody;
  }
}


