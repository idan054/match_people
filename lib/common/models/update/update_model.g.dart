// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'update_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_UpdateModel _$$_UpdateModelFromJson(Map<String, dynamic> json) =>
    _$_UpdateModel(
      id: json['id'] as String?,
      updateValue: json['updateValue'] as String?,
      to: (json['to'] as List<dynamic>?)
          ?.map((e) => $enumDecode(_$UserTypeEnumMap, e))
          .toList(),
      fromContact: json['fromContact'] == null
          ? null
          : ContactModel.fromJson(json['fromContact'] as Map<String, dynamic>),
      timestamp:
          const DateTimeStampConv().fromJson(json['timestamp'] as Timestamp?),
    );

Map<String, dynamic> _$$_UpdateModelToJson(_$_UpdateModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'updateValue': instance.updateValue,
      'to': instance.to?.map((e) => _$UserTypeEnumMap[e]!).toList(),
      'fromContact': instance.fromContact?.toJson(),
      'timestamp': const DateTimeStampConv().toJson(instance.timestamp),
    };

const _$UserTypeEnumMap = {
  UserType.soldier: 'soldier',
  UserType.nagad: 'nagad',
  UserType.katsin: 'katsin',
};
