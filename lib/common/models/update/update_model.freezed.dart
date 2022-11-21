// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'update_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

UpdateModel _$UpdateModelFromJson(Map<String, dynamic> json) {
  return _UpdateModel.fromJson(json);
}

/// @nodoc
mixin _$UpdateModel {
  String? get id => throw _privateConstructorUsedError;
  String? get updateValue => throw _privateConstructorUsedError;
  List<UserType>? get to => throw _privateConstructorUsedError;
  ContactModel? get fromContact => throw _privateConstructorUsedError;
  @DateTimeStampConv()
  DateTime? get timestamp => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UpdateModelCopyWith<UpdateModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UpdateModelCopyWith<$Res> {
  factory $UpdateModelCopyWith(
          UpdateModel value, $Res Function(UpdateModel) then) =
      _$UpdateModelCopyWithImpl<$Res, UpdateModel>;
  @useResult
  $Res call(
      {String? id,
      String? updateValue,
      List<UserType>? to,
      ContactModel? fromContact,
      @DateTimeStampConv() DateTime? timestamp});
}

/// @nodoc
class _$UpdateModelCopyWithImpl<$Res, $Val extends UpdateModel>
    implements $UpdateModelCopyWith<$Res> {
  _$UpdateModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? updateValue = freezed,
    Object? to = freezed,
    Object? fromContact = freezed,
    Object? timestamp = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      updateValue: freezed == updateValue
          ? _value.updateValue
          : updateValue // ignore: cast_nullable_to_non_nullable
              as String?,
      to: freezed == to
          ? _value.to
          : to // ignore: cast_nullable_to_non_nullable
              as List<UserType>?,
      fromContact: freezed == fromContact
          ? _value.fromContact
          : fromContact // ignore: cast_nullable_to_non_nullable
              as ContactModel?,
      timestamp: freezed == timestamp
          ? _value.timestamp
          : timestamp // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_UpdateModelCopyWith<$Res>
    implements $UpdateModelCopyWith<$Res> {
  factory _$$_UpdateModelCopyWith(
          _$_UpdateModel value, $Res Function(_$_UpdateModel) then) =
      __$$_UpdateModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? id,
      String? updateValue,
      List<UserType>? to,
      ContactModel? fromContact,
      @DateTimeStampConv() DateTime? timestamp});
}

/// @nodoc
class __$$_UpdateModelCopyWithImpl<$Res>
    extends _$UpdateModelCopyWithImpl<$Res, _$_UpdateModel>
    implements _$$_UpdateModelCopyWith<$Res> {
  __$$_UpdateModelCopyWithImpl(
      _$_UpdateModel _value, $Res Function(_$_UpdateModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? updateValue = freezed,
    Object? to = freezed,
    Object? fromContact = freezed,
    Object? timestamp = freezed,
  }) {
    return _then(_$_UpdateModel(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      updateValue: freezed == updateValue
          ? _value.updateValue
          : updateValue // ignore: cast_nullable_to_non_nullable
              as String?,
      to: freezed == to
          ? _value._to
          : to // ignore: cast_nullable_to_non_nullable
              as List<UserType>?,
      fromContact: freezed == fromContact
          ? _value.fromContact
          : fromContact // ignore: cast_nullable_to_non_nullable
              as ContactModel?,
      timestamp: freezed == timestamp
          ? _value.timestamp
          : timestamp // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$_UpdateModel implements _UpdateModel {
  const _$_UpdateModel(
      {this.id,
      this.updateValue,
      final List<UserType>? to,
      this.fromContact,
      @DateTimeStampConv() this.timestamp})
      : _to = to;

  factory _$_UpdateModel.fromJson(Map<String, dynamic> json) =>
      _$$_UpdateModelFromJson(json);

  @override
  final String? id;
  @override
  final String? updateValue;
  final List<UserType>? _to;
  @override
  List<UserType>? get to {
    final value = _to;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final ContactModel? fromContact;
  @override
  @DateTimeStampConv()
  final DateTime? timestamp;

  @override
  String toString() {
    return 'UpdateModel(id: $id, updateValue: $updateValue, to: $to, fromContact: $fromContact, timestamp: $timestamp)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_UpdateModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.updateValue, updateValue) ||
                other.updateValue == updateValue) &&
            const DeepCollectionEquality().equals(other._to, _to) &&
            (identical(other.fromContact, fromContact) ||
                other.fromContact == fromContact) &&
            (identical(other.timestamp, timestamp) ||
                other.timestamp == timestamp));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, updateValue,
      const DeepCollectionEquality().hash(_to), fromContact, timestamp);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_UpdateModelCopyWith<_$_UpdateModel> get copyWith =>
      __$$_UpdateModelCopyWithImpl<_$_UpdateModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_UpdateModelToJson(
      this,
    );
  }
}

abstract class _UpdateModel implements UpdateModel {
  const factory _UpdateModel(
      {final String? id,
      final String? updateValue,
      final List<UserType>? to,
      final ContactModel? fromContact,
      @DateTimeStampConv() final DateTime? timestamp}) = _$_UpdateModel;

  factory _UpdateModel.fromJson(Map<String, dynamic> json) =
      _$_UpdateModel.fromJson;

  @override
  String? get id;
  @override
  String? get updateValue;
  @override
  List<UserType>? get to;
  @override
  ContactModel? get fromContact;
  @override
  @DateTimeStampConv()
  DateTime? get timestamp;
  @override
  @JsonKey(ignore: true)
  _$$_UpdateModelCopyWith<_$_UpdateModel> get copyWith =>
      throw _privateConstructorUsedError;
}
