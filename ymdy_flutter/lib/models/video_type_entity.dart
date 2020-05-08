import 'package:json_annotation/json_annotation.dart';

part 'video_type_entity.g.dart';


@JsonSerializable()
class VideoTypeEntity extends Object {

  @JsonKey(name: 'code')
  int code;

  @JsonKey(name: 'msg')
  String msg;

  @JsonKey(name: 'data')
  VideoTypeData data;

  VideoTypeEntity(this.code,this.msg,this.data,);

  factory VideoTypeEntity.fromJson(Map<String, dynamic> srcJson) => _$VideoTypeEntityFromJson(srcJson);

  Map<String, dynamic> toJson() => _$VideoTypeEntityToJson(this);

}


@JsonSerializable()
class VideoTypeData extends Object {

  @JsonKey(name: 'resultArray')
  List<VideoTypesList> resultArray;

  VideoTypeData(this.resultArray,);

  factory VideoTypeData.fromJson(Map<String, dynamic> srcJson) => _$DataFromJson(srcJson);

  Map<String, dynamic> toJson() => _$DataToJson(this);

}


@JsonSerializable()
class VideoTypesList extends Object {

  @JsonKey(name: 'id')
  int id;

  @JsonKey(name: 'orders')
  int orders;

  @JsonKey(name: 'name')
  String name;

  @JsonKey(name: 'des')
  String des;

  VideoTypesList(this.id,this.orders,this.name,this.des,);

  factory VideoTypesList.fromJson(Map<String, dynamic> srcJson) => _$ResultArrayFromJson(srcJson);

  Map<String, dynamic> toJson() => _$ResultArrayToJson(this);

}


