// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'video_type_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

VideoTypeEntity _$VideoTypeEntityFromJson(Map<String, dynamic> json) {
  return VideoTypeEntity(
    json['code'] as int,
    json['msg'] as String,
    json['data'] == null
        ? null
        : VideoTypeData.fromJson(json['data'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$VideoTypeEntityToJson(VideoTypeEntity instance) =>
    <String, dynamic>{
      'code': instance.code,
      'msg': instance.msg,
      'data': instance.data,
    };

VideoTypeData _$DataFromJson(Map<String, dynamic> json) {
  return VideoTypeData(
    (json['resultArray'] as List)
        ?.map((e) =>
            e == null ? null : VideoTypesList.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$DataToJson(VideoTypeData instance) => <String, dynamic>{
      'resultArray': instance.resultArray,
    };

VideoTypesList _$ResultArrayFromJson(Map<String, dynamic> json) {
  return VideoTypesList(
    json['id'] as int,
    json['orders'] as int,
    json['name'] as String,
    json['des'] as String,
  );
}

Map<String, dynamic> _$ResultArrayToJson(VideoTypesList instance) =>
    <String, dynamic>{
      'id': instance.id,
      'orders': instance.orders,
      'name': instance.name,
      'des': instance.des,
    };
