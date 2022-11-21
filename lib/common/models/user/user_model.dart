// ignore_for_file: invalid_annotation_target
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../contact_model.dart';

part 'user_model.freezed.dart';
part 'user_model.g.dart';

enum AccessLevel {
  restricted, normal, admin
}

enum UserType {
  soldier, nagad, katsin
}

// flutter pub run build_runner build --delete-conflicting-outputs
@freezed
//~ Don't forget to manually add in HIVE Model!
class UserModel with _$UserModel {
  @JsonSerializable(explicitToJson: true) // This needed for sub classes Only
  const factory UserModel({
    String? uid,
    String? name,
    String? email,
    AccessLevel? accessLevel,
    UserType? type,
    String? photoUrl,
    ContactModel? contact,
  }) = _UserModel;

  factory UserModel.fromJson(Map<String, dynamic> json) => _$UserModelFromJson(json);
}
