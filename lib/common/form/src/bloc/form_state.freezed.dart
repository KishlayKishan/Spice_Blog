// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'form_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$FormState {
  Map<Enum, FormField> get fields => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $FormStateCopyWith<FormState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FormStateCopyWith<$Res> {
  factory $FormStateCopyWith(FormState value, $Res Function(FormState) then) =
      _$FormStateCopyWithImpl<$Res>;
  $Res call({Map<Enum, FormField> fields});
}

/// @nodoc
class _$FormStateCopyWithImpl<$Res> implements $FormStateCopyWith<$Res> {
  _$FormStateCopyWithImpl(this._value, this._then);

  final FormState _value;
  // ignore: unused_field
  final $Res Function(FormState) _then;

  @override
  $Res call({
    Object? fields = freezed,
  }) {
    return _then(_value.copyWith(
      fields: fields == freezed
          ? _value.fields
          : fields // ignore: cast_nullable_to_non_nullable
              as Map<Enum, FormField>,
    ));
  }
}

/// @nodoc
abstract class _$$_FormStateCopyWith<$Res> implements $FormStateCopyWith<$Res> {
  factory _$$_FormStateCopyWith(
          _$_FormState value, $Res Function(_$_FormState) then) =
      __$$_FormStateCopyWithImpl<$Res>;
  @override
  $Res call({Map<Enum, FormField> fields});
}

/// @nodoc
class __$$_FormStateCopyWithImpl<$Res> extends _$FormStateCopyWithImpl<$Res>
    implements _$$_FormStateCopyWith<$Res> {
  __$$_FormStateCopyWithImpl(
      _$_FormState _value, $Res Function(_$_FormState) _then)
      : super(_value, (v) => _then(v as _$_FormState));

  @override
  _$_FormState get _value => super._value as _$_FormState;

  @override
  $Res call({
    Object? fields = freezed,
  }) {
    return _then(_$_FormState(
      fields == freezed
          ? _value.fields
          : fields // ignore: cast_nullable_to_non_nullable
              as Map<Enum, FormField>,
    ));
  }
}

/// @nodoc

class _$_FormState extends _FormState {
  const _$_FormState(this.fields) : super._();

  @override
  final Map<Enum, FormField> fields;

  @override
  String toString() {
    return 'FormState(fields: $fields)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FormState &&
            const DeepCollectionEquality().equals(other.fields, fields));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(fields));

  @JsonKey(ignore: true)
  @override
  _$$_FormStateCopyWith<_$_FormState> get copyWith =>
      __$$_FormStateCopyWithImpl<_$_FormState>(this, _$identity);
}

abstract class _FormState extends FormState {
  const factory _FormState(final Map<Enum, FormField> fields) = _$_FormState;
  const _FormState._() : super._();

  @override
  Map<Enum, FormField> get fields;
  @override
  @JsonKey(ignore: true)
  _$$_FormStateCopyWith<_$_FormState> get copyWith =>
      throw _privateConstructorUsedError;
}
