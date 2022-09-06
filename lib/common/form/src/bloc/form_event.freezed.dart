// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of form;

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$FormEvent<T> {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() onLoad,
    required TResult Function(Enum key, T? value, bool isToggle) onUpdate,
    required TResult Function() onSubmit,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? onLoad,
    TResult Function(Enum key, T? value, bool isToggle)? onUpdate,
    TResult Function()? onSubmit,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? onLoad,
    TResult Function(Enum key, T? value, bool isToggle)? onUpdate,
    TResult Function()? onSubmit,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(OnFormLoadEvent<T> value) onLoad,
    required TResult Function(OnFormValueUpdateEvent<T> value) onUpdate,
    required TResult Function(OnFormSubmitEvent<T> value) onSubmit,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(OnFormLoadEvent<T> value)? onLoad,
    TResult Function(OnFormValueUpdateEvent<T> value)? onUpdate,
    TResult Function(OnFormSubmitEvent<T> value)? onSubmit,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(OnFormLoadEvent<T> value)? onLoad,
    TResult Function(OnFormValueUpdateEvent<T> value)? onUpdate,
    TResult Function(OnFormSubmitEvent<T> value)? onSubmit,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FormEventCopyWith<T, $Res> {
  factory $FormEventCopyWith(
          FormEvent<T> value, $Res Function(FormEvent<T>) then) =
      _$FormEventCopyWithImpl<T, $Res>;
}

/// @nodoc
class _$FormEventCopyWithImpl<T, $Res> implements $FormEventCopyWith<T, $Res> {
  _$FormEventCopyWithImpl(this._value, this._then);

  final FormEvent<T> _value;
  // ignore: unused_field
  final $Res Function(FormEvent<T>) _then;
}

/// @nodoc
abstract class _$$OnFormLoadEventCopyWith<T, $Res> {
  factory _$$OnFormLoadEventCopyWith(_$OnFormLoadEvent<T> value,
          $Res Function(_$OnFormLoadEvent<T>) then) =
      __$$OnFormLoadEventCopyWithImpl<T, $Res>;
}

/// @nodoc
class __$$OnFormLoadEventCopyWithImpl<T, $Res>
    extends _$FormEventCopyWithImpl<T, $Res>
    implements _$$OnFormLoadEventCopyWith<T, $Res> {
  __$$OnFormLoadEventCopyWithImpl(
      _$OnFormLoadEvent<T> _value, $Res Function(_$OnFormLoadEvent<T>) _then)
      : super(_value, (v) => _then(v as _$OnFormLoadEvent<T>));

  @override
  _$OnFormLoadEvent<T> get _value => super._value as _$OnFormLoadEvent<T>;
}

/// @nodoc

class _$OnFormLoadEvent<T> implements OnFormLoadEvent<T> {
  const _$OnFormLoadEvent();

  @override
  String toString() {
    return 'FormEvent<$T>.onLoad()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$OnFormLoadEvent<T>);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() onLoad,
    required TResult Function(Enum key, T? value, bool isToggle) onUpdate,
    required TResult Function() onSubmit,
  }) {
    return onLoad();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? onLoad,
    TResult Function(Enum key, T? value, bool isToggle)? onUpdate,
    TResult Function()? onSubmit,
  }) {
    return onLoad?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? onLoad,
    TResult Function(Enum key, T? value, bool isToggle)? onUpdate,
    TResult Function()? onSubmit,
    required TResult orElse(),
  }) {
    if (onLoad != null) {
      return onLoad();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(OnFormLoadEvent<T> value) onLoad,
    required TResult Function(OnFormValueUpdateEvent<T> value) onUpdate,
    required TResult Function(OnFormSubmitEvent<T> value) onSubmit,
  }) {
    return onLoad(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(OnFormLoadEvent<T> value)? onLoad,
    TResult Function(OnFormValueUpdateEvent<T> value)? onUpdate,
    TResult Function(OnFormSubmitEvent<T> value)? onSubmit,
  }) {
    return onLoad?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(OnFormLoadEvent<T> value)? onLoad,
    TResult Function(OnFormValueUpdateEvent<T> value)? onUpdate,
    TResult Function(OnFormSubmitEvent<T> value)? onSubmit,
    required TResult orElse(),
  }) {
    if (onLoad != null) {
      return onLoad(this);
    }
    return orElse();
  }
}

abstract class OnFormLoadEvent<T> implements FormEvent<T> {
  const factory OnFormLoadEvent() = _$OnFormLoadEvent<T>;
}

/// @nodoc
abstract class _$$OnFormValueUpdateEventCopyWith<T, $Res> {
  factory _$$OnFormValueUpdateEventCopyWith(_$OnFormValueUpdateEvent<T> value,
          $Res Function(_$OnFormValueUpdateEvent<T>) then) =
      __$$OnFormValueUpdateEventCopyWithImpl<T, $Res>;
  $Res call({Enum key, T? value, bool isToggle});
}

/// @nodoc
class __$$OnFormValueUpdateEventCopyWithImpl<T, $Res>
    extends _$FormEventCopyWithImpl<T, $Res>
    implements _$$OnFormValueUpdateEventCopyWith<T, $Res> {
  __$$OnFormValueUpdateEventCopyWithImpl(_$OnFormValueUpdateEvent<T> _value,
      $Res Function(_$OnFormValueUpdateEvent<T>) _then)
      : super(_value, (v) => _then(v as _$OnFormValueUpdateEvent<T>));

  @override
  _$OnFormValueUpdateEvent<T> get _value =>
      super._value as _$OnFormValueUpdateEvent<T>;

  @override
  $Res call({
    Object? key = freezed,
    Object? value = freezed,
    Object? isToggle = freezed,
  }) {
    return _then(_$OnFormValueUpdateEvent<T>(
      key: key == freezed
          ? _value.key
          : key // ignore: cast_nullable_to_non_nullable
              as Enum,
      value: value == freezed
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as T?,
      isToggle: isToggle == freezed
          ? _value.isToggle
          : isToggle // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$OnFormValueUpdateEvent<T> implements OnFormValueUpdateEvent<T> {
  const _$OnFormValueUpdateEvent(
      {required this.key, this.value, this.isToggle = false});

  @override
  final Enum key;
  @override
  final T? value;
  @override
  @JsonKey()
  final bool isToggle;

  @override
  String toString() {
    return 'FormEvent<$T>.onUpdate(key: $key, value: $value, isToggle: $isToggle)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OnFormValueUpdateEvent<T> &&
            const DeepCollectionEquality().equals(other.key, key) &&
            const DeepCollectionEquality().equals(other.value, value) &&
            const DeepCollectionEquality().equals(other.isToggle, isToggle));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(key),
      const DeepCollectionEquality().hash(value),
      const DeepCollectionEquality().hash(isToggle));

  @JsonKey(ignore: true)
  @override
  _$$OnFormValueUpdateEventCopyWith<T, _$OnFormValueUpdateEvent<T>>
      get copyWith => __$$OnFormValueUpdateEventCopyWithImpl<T,
          _$OnFormValueUpdateEvent<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() onLoad,
    required TResult Function(Enum key, T? value, bool isToggle) onUpdate,
    required TResult Function() onSubmit,
  }) {
    return onUpdate(key, value, isToggle);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? onLoad,
    TResult Function(Enum key, T? value, bool isToggle)? onUpdate,
    TResult Function()? onSubmit,
  }) {
    return onUpdate?.call(key, value, isToggle);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? onLoad,
    TResult Function(Enum key, T? value, bool isToggle)? onUpdate,
    TResult Function()? onSubmit,
    required TResult orElse(),
  }) {
    if (onUpdate != null) {
      return onUpdate(key, value, isToggle);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(OnFormLoadEvent<T> value) onLoad,
    required TResult Function(OnFormValueUpdateEvent<T> value) onUpdate,
    required TResult Function(OnFormSubmitEvent<T> value) onSubmit,
  }) {
    return onUpdate(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(OnFormLoadEvent<T> value)? onLoad,
    TResult Function(OnFormValueUpdateEvent<T> value)? onUpdate,
    TResult Function(OnFormSubmitEvent<T> value)? onSubmit,
  }) {
    return onUpdate?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(OnFormLoadEvent<T> value)? onLoad,
    TResult Function(OnFormValueUpdateEvent<T> value)? onUpdate,
    TResult Function(OnFormSubmitEvent<T> value)? onSubmit,
    required TResult orElse(),
  }) {
    if (onUpdate != null) {
      return onUpdate(this);
    }
    return orElse();
  }
}

abstract class OnFormValueUpdateEvent<T> implements FormEvent<T> {
  const factory OnFormValueUpdateEvent(
      {required final Enum key,
      final T? value,
      final bool isToggle}) = _$OnFormValueUpdateEvent<T>;

  Enum get key;
  T? get value;
  bool get isToggle;
  @JsonKey(ignore: true)
  _$$OnFormValueUpdateEventCopyWith<T, _$OnFormValueUpdateEvent<T>>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$OnFormSubmitEventCopyWith<T, $Res> {
  factory _$$OnFormSubmitEventCopyWith(_$OnFormSubmitEvent<T> value,
          $Res Function(_$OnFormSubmitEvent<T>) then) =
      __$$OnFormSubmitEventCopyWithImpl<T, $Res>;
}

/// @nodoc
class __$$OnFormSubmitEventCopyWithImpl<T, $Res>
    extends _$FormEventCopyWithImpl<T, $Res>
    implements _$$OnFormSubmitEventCopyWith<T, $Res> {
  __$$OnFormSubmitEventCopyWithImpl(_$OnFormSubmitEvent<T> _value,
      $Res Function(_$OnFormSubmitEvent<T>) _then)
      : super(_value, (v) => _then(v as _$OnFormSubmitEvent<T>));

  @override
  _$OnFormSubmitEvent<T> get _value => super._value as _$OnFormSubmitEvent<T>;
}

/// @nodoc

class _$OnFormSubmitEvent<T> implements OnFormSubmitEvent<T> {
  const _$OnFormSubmitEvent();

  @override
  String toString() {
    return 'FormEvent<$T>.onSubmit()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$OnFormSubmitEvent<T>);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() onLoad,
    required TResult Function(Enum key, T? value, bool isToggle) onUpdate,
    required TResult Function() onSubmit,
  }) {
    return onSubmit();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? onLoad,
    TResult Function(Enum key, T? value, bool isToggle)? onUpdate,
    TResult Function()? onSubmit,
  }) {
    return onSubmit?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? onLoad,
    TResult Function(Enum key, T? value, bool isToggle)? onUpdate,
    TResult Function()? onSubmit,
    required TResult orElse(),
  }) {
    if (onSubmit != null) {
      return onSubmit();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(OnFormLoadEvent<T> value) onLoad,
    required TResult Function(OnFormValueUpdateEvent<T> value) onUpdate,
    required TResult Function(OnFormSubmitEvent<T> value) onSubmit,
  }) {
    return onSubmit(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(OnFormLoadEvent<T> value)? onLoad,
    TResult Function(OnFormValueUpdateEvent<T> value)? onUpdate,
    TResult Function(OnFormSubmitEvent<T> value)? onSubmit,
  }) {
    return onSubmit?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(OnFormLoadEvent<T> value)? onLoad,
    TResult Function(OnFormValueUpdateEvent<T> value)? onUpdate,
    TResult Function(OnFormSubmitEvent<T> value)? onSubmit,
    required TResult orElse(),
  }) {
    if (onSubmit != null) {
      return onSubmit(this);
    }
    return orElse();
  }
}

abstract class OnFormSubmitEvent<T> implements FormEvent<T> {
  const factory OnFormSubmitEvent() = _$OnFormSubmitEvent<T>;
}
