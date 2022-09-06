// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'form_field.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$FormField<T> {
  Enum get key => throw _privateConstructorUsedError;
  T get value => throw _privateConstructorUsedError;
  String? get label => throw _privateConstructorUsedError;
  FieldType get type => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $FormFieldCopyWith<T, FormField<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FormFieldCopyWith<T, $Res> {
  factory $FormFieldCopyWith(
          FormField<T> value, $Res Function(FormField<T>) then) =
      _$FormFieldCopyWithImpl<T, $Res>;
  $Res call({Enum key, T value, String? label, FieldType type});
}

/// @nodoc
class _$FormFieldCopyWithImpl<T, $Res> implements $FormFieldCopyWith<T, $Res> {
  _$FormFieldCopyWithImpl(this._value, this._then);

  final FormField<T> _value;
  // ignore: unused_field
  final $Res Function(FormField<T>) _then;

  @override
  $Res call({
    Object? key = freezed,
    Object? value = freezed,
    Object? label = freezed,
    Object? type = freezed,
  }) {
    return _then(_value.copyWith(
      key: key == freezed
          ? _value.key
          : key // ignore: cast_nullable_to_non_nullable
              as Enum,
      value: value == freezed
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as T,
      label: label == freezed
          ? _value.label
          : label // ignore: cast_nullable_to_non_nullable
              as String?,
      type: type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as FieldType,
    ));
  }
}

/// @nodoc
abstract class _$$_FormFieldCopyWith<T, $Res>
    implements $FormFieldCopyWith<T, $Res> {
  factory _$$_FormFieldCopyWith(
          _$_FormField<T> value, $Res Function(_$_FormField<T>) then) =
      __$$_FormFieldCopyWithImpl<T, $Res>;
  @override
  $Res call({Enum key, T value, String? label, FieldType type});
}

/// @nodoc
class __$$_FormFieldCopyWithImpl<T, $Res>
    extends _$FormFieldCopyWithImpl<T, $Res>
    implements _$$_FormFieldCopyWith<T, $Res> {
  __$$_FormFieldCopyWithImpl(
      _$_FormField<T> _value, $Res Function(_$_FormField<T>) _then)
      : super(_value, (v) => _then(v as _$_FormField<T>));

  @override
  _$_FormField<T> get _value => super._value as _$_FormField<T>;

  @override
  $Res call({
    Object? key = freezed,
    Object? value = freezed,
    Object? label = freezed,
    Object? type = freezed,
  }) {
    return _then(_$_FormField<T>(
      key: key == freezed
          ? _value.key
          : key // ignore: cast_nullable_to_non_nullable
              as Enum,
      value: value == freezed
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as T,
      label: label == freezed
          ? _value.label
          : label // ignore: cast_nullable_to_non_nullable
              as String?,
      type: type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as FieldType,
    ));
  }
}

/// @nodoc

class _$_FormField<T> implements _FormField<T> {
  const _$_FormField(
      {required this.key, required this.value, this.label, required this.type});

  @override
  final Enum key;
  @override
  final T value;
  @override
  final String? label;
  @override
  final FieldType type;

  @override
  String toString() {
    return 'FormField<$T>(key: $key, value: $value, label: $label, type: $type)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FormField<T> &&
            const DeepCollectionEquality().equals(other.key, key) &&
            const DeepCollectionEquality().equals(other.value, value) &&
            const DeepCollectionEquality().equals(other.label, label) &&
            const DeepCollectionEquality().equals(other.type, type));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(key),
      const DeepCollectionEquality().hash(value),
      const DeepCollectionEquality().hash(label),
      const DeepCollectionEquality().hash(type));

  @JsonKey(ignore: true)
  @override
  _$$_FormFieldCopyWith<T, _$_FormField<T>> get copyWith =>
      __$$_FormFieldCopyWithImpl<T, _$_FormField<T>>(this, _$identity);
}

abstract class _FormField<T> implements FormField<T> {
  const factory _FormField(
      {required final Enum key,
      required final T value,
      final String? label,
      required final FieldType type}) = _$_FormField<T>;

  @override
  Enum get key;
  @override
  T get value;
  @override
  String? get label;
  @override
  FieldType get type;
  @override
  @JsonKey(ignore: true)
  _$$_FormFieldCopyWith<T, _$_FormField<T>> get copyWith =>
      throw _privateConstructorUsedError;
}
