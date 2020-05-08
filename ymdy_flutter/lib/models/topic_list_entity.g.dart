// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'topic_list_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TopicListEntity _$TopicListEntityFromJson(Map<String, dynamic> json) {
  return TopicListEntity(
    json['code'] as int,
    json['msg'] as String,
    json['data'] == null
        ? null
        : TopicData.fromJson(json['data'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$TopicListEntityToJson(TopicListEntity instance) =>
    <String, dynamic>{
      'code': instance.code,
      'msg': instance.msg,
      'data': instance.data,
    };

TopicData _$DataFromJson(Map<String, dynamic> json) {
  return TopicData(
    json['total'] as int,
    json['pages'] as int,
    (json['resultArray'] as List)
        ?.map((e) =>
            e == null ? null : TopicItem.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$DataToJson(TopicData instance) => <String, dynamic>{
      'total': instance.total,
      'pages': instance.pages,
      'resultArray': instance.resultArray,
    };

TopicItem _$ResultArrayFromJson(Map<String, dynamic> json) {
  return TopicItem(
    json['summary'] as String,
    json['img'] as String,
    json['isDelete'] as int,
    json['updateTime'] as String,
    json['title'] as String,
    json['version'] as int,
    json['cover'] as String,
    json['videoGroupCount'] as int,
    (json['videoArray'] as List)
        ?.map((e) =>
            e == null ? null : TopicItemItem.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    json['createdTime'] as String,
    json['showType'] as int,
    json['orders'] as int,
    json['typeId'] as int,
    json['id'] as int,
    json['info'] as String,
  );
}

Map<String, dynamic> _$ResultArrayToJson(TopicItem instance) =>
    <String, dynamic>{
      'summary': instance.summary,
      'img': instance.img,
      'isDelete': instance.isDelete,
      'updateTime': instance.updateTime,
      'title': instance.title,
      'version': instance.version,
      'cover': instance.cover,
      'videoGroupCount': instance.videoGroupCount,
      'videoArray': instance.videoArray,
      'createdTime': instance.createdTime,
      'showType': instance.showType,
      'orders': instance.orders,
      'typeId': instance.typeId,
      'id': instance.id,
      'info': instance.info,
    };

TopicItemItem _$VideoArrayFromJson(Map<String, dynamic> json) {
  return TopicItemItem(
    json['img'] as String,
    json['groupId'] as int,
    json['episodeNum'] as int,
    json['name'] as String,
    json['alias'] as String,
    json['updateText'] as String,
    json['type'] as int,
  );
}

Map<String, dynamic> _$VideoArrayToJson(TopicItemItem instance) =>
    <String, dynamic>{
      'img': instance.img,
      'groupId': instance.groupId,
      'episodeNum': instance.episodeNum,
      'name': instance.name,
      'alias': instance.alias,
      'updateText': instance.updateText,
      'type': instance.type,
    };
