// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_UserModel _$$_UserModelFromJson(Map<String, dynamic> json) => _$_UserModel(
      uid: json['uid'] as String?,
      name: json['name'] as String?,
      email: json['email'] as String?,
      accessLevel:
          $enumDecodeNullable(_$AccessLevelEnumMap, json['accessLevel']),
      type: $enumDecodeNullable(_$UserTypeEnumMap, json['type']),
      photoUrl: json['photoUrl'] as String?,
      contact: json['contact'] == null
          ? null
          : ContactModel.fromJson(json['contact'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_UserModelToJson(_$_UserModel instance) =>
    <String, dynamic>{
      'uid': instance.uid,
      'name': instance.name,
      'email': instance.email,
      'accessLevel': _$AccessLevelEnumMap[instance.accessLevel],
      'type': _$UserTypeEnumMap[instance.type],
      'photoUrl': instance.photoUrl,
      'contact': instance.contact?.toJson(),
    };

const _$AccessLevelEnumMap = {
  AccessLevel.restricted: 'restricted',
  AccessLevel.normal: 'normal',
  AccessLevel.admin: 'admin',
};

const _$UserTypeEnumMap = {
  UserType.soldier: 'soldier',
  UserType.nagad: 'nagad',
  UserType.katsin: 'katsin',
};
