import 'package:json_annotation/json_annotation.dart';

part 'topic_list_entity.g.dart';


@JsonSerializable()
class TopicListEntity extends Object {

  @JsonKey(name: 'code')
  int code;

  @JsonKey(name: 'msg')
  String msg;

  @JsonKey(name: 'data')
  TopicData data;

  TopicListEntity(this.code,this.msg,this.data,);

  factory TopicListEntity.fromJson(Map<String, dynamic> srcJson) => _$TopicListEntityFromJson(srcJson);

  Map<String, dynamic> toJson() => _$TopicListEntityToJson(this);

}


@JsonSerializable()
class TopicData extends Object {

  @JsonKey(name: 'total')
  int total;

  @JsonKey(name: 'pages')
  int pages;

  @JsonKey(name: 'resultArray')
  List<TopicItem> resultArray;

  TopicData(this.total,this.pages,this.resultArray,);

  factory TopicData.fromJson(Map<String, dynamic> srcJson) => _$DataFromJson(srcJson);

  Map<String, dynamic> toJson() => _$DataToJson(this);

}


@JsonSerializable()
class TopicItem extends Object {

  @JsonKey(name: 'summary')
  String summary;

  @JsonKey(name: 'img')
  String img;

  @JsonKey(name: 'isDelete')
  int isDelete;

  @JsonKey(name: 'updateTime')
  String updateTime;

  @JsonKey(name: 'title')
  String title;

  @JsonKey(name: 'version')
  int version;

  @JsonKey(name: 'cover')
  String cover;

  @JsonKey(name: 'videoGroupCount')
  int videoGroupCount;

  @JsonKey(name: 'videoArray')
  List<TopicItemItem> videoArray;

  @JsonKey(name: 'createdTime')
  String createdTime;

  @JsonKey(name: 'showType')
  int showType;

  @JsonKey(name: 'orders')
  int orders;

  @JsonKey(name: 'typeId')
  int typeId;

  @JsonKey(name: 'id')
  int id;

  @JsonKey(name: 'info')
  String info;

  TopicItem(this.summary,this.img,this.isDelete,this.updateTime,this.title,this.version,this.cover,this.videoGroupCount,this.videoArray,this.createdTime,this.showType,this.orders,this.typeId,this.id,this.info,);

  factory TopicItem.fromJson(Map<String, dynamic> srcJson) => _$ResultArrayFromJson(srcJson);

  Map<String, dynamic> toJson() => _$ResultArrayToJson(this);

}


@JsonSerializable()
class TopicItemItem extends Object {

  @JsonKey(name: 'img')
  String img;

  @JsonKey(name: 'groupId')
  int groupId;

  @JsonKey(name: 'episodeNum')
  int episodeNum;

  @JsonKey(name: 'name')
  String name;

  @JsonKey(name: 'alias')
  String alias;

  @JsonKey(name: 'updateText')
  String updateText;

  @JsonKey(name: 'type')
  int type;

  TopicItemItem(this.img,this.groupId,this.episodeNum,this.name,this.alias,this.updateText,this.type,);

  factory TopicItemItem.fromJson(Map<String, dynamic> srcJson) => _$VideoArrayFromJson(srcJson);

  Map<String, dynamic> toJson() => _$VideoArrayToJson(this);

}


