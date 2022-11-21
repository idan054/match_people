// ignore_for_file: invalid_annotation_target
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../contact_model.dart';
import '../convertors.dart';
import '../user/user_model.dart';

part 'update_model.freezed.dart';
part 'update_model.g.dart';

// enum AccessLevel { restricted, normal, admin }

// flutter pub run build_runner build --delete-conflicting-outputs
@freezed
//~ Don't forget to manually add in HIVE Model!
class UpdateModel with _$UpdateModel {
  @JsonSerializable(explicitToJson: true) // This needed for sub classes Only
  const factory UpdateModel({
    String? id,
    String? updateValue,
    List<UserType>? to,
    ContactModel? fromContact,
    @DateTimeStampConv() DateTime? timestamp,
  }) = _UpdateModel;

  factory UpdateModel.fromJson(Map<String, dynamic> json) => _$UpdateModelFromJson(json);
}
