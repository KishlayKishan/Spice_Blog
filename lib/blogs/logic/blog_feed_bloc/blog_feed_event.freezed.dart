// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'blog_feed_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$BlogFeedEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() load,
    required TResult Function(int id) delete,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? load,
    TResult Function(int id)? delete,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? load,
    TResult Function(int id)? delete,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(OnFeedLoadEvent value) load,
    required TResult Function(OnDeleteBlogEvent value) delete,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(OnFeedLoadEvent value)? load,
    TResult Function(OnDeleteBlogEvent value)? delete,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(OnFeedLoadEvent value)? load,
    TResult Function(OnDeleteBlogEvent value)? delete,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BlogFeedEventCopyWith<$Res> {
  factory $BlogFeedEventCopyWith(
          BlogFeedEvent value, $Res Function(BlogFeedEvent) then) =
      _$BlogFeedEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$BlogFeedEventCopyWithImpl<$Res>
    implements $BlogFeedEventCopyWith<$Res> {
  _$BlogFeedEventCopyWithImpl(this._value, this._then);

  final BlogFeedEvent _value;
  // ignore: unused_field
  final $Res Function(BlogFeedEvent) _then;
}

/// @nodoc
abstract class _$$OnFeedLoadEventCopyWith<$Res> {
  factory _$$OnFeedLoadEventCopyWith(
          _$OnFeedLoadEvent value, $Res Function(_$OnFeedLoadEvent) then) =
      __$$OnFeedLoadEventCopyWithImpl<$Res>;
}

/// @nodoc
class __$$OnFeedLoadEventCopyWithImpl<$Res>
    extends _$BlogFeedEventCopyWithImpl<$Res>
    implements _$$OnFeedLoadEventCopyWith<$Res> {
  __$$OnFeedLoadEventCopyWithImpl(
      _$OnFeedLoadEvent _value, $Res Function(_$OnFeedLoadEvent) _then)
      : super(_value, (v) => _then(v as _$OnFeedLoadEvent));

  @override
  _$OnFeedLoadEvent get _value => super._value as _$OnFeedLoadEvent;
}

/// @nodoc

class _$OnFeedLoadEvent implements OnFeedLoadEvent {
  _$OnFeedLoadEvent();

  @override
  String toString() {
    return 'BlogFeedEvent.load()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$OnFeedLoadEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() load,
    required TResult Function(int id) delete,
  }) {
    return load();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? load,
    TResult Function(int id)? delete,
  }) {
    return load?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? load,
    TResult Function(int id)? delete,
    required TResult orElse(),
  }) {
    if (load != null) {
      return load();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(OnFeedLoadEvent value) load,
    required TResult Function(OnDeleteBlogEvent value) delete,
  }) {
    return load(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(OnFeedLoadEvent value)? load,
    TResult Function(OnDeleteBlogEvent value)? delete,
  }) {
    return load?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(OnFeedLoadEvent value)? load,
    TResult Function(OnDeleteBlogEvent value)? delete,
    required TResult orElse(),
  }) {
    if (load != null) {
      return load(this);
    }
    return orElse();
  }
}

abstract class OnFeedLoadEvent implements BlogFeedEvent {
  factory OnFeedLoadEvent() = _$OnFeedLoadEvent;
}

/// @nodoc
abstract class _$$OnDeleteBlogEventCopyWith<$Res> {
  factory _$$OnDeleteBlogEventCopyWith(
          _$OnDeleteBlogEvent value, $Res Function(_$OnDeleteBlogEvent) then) =
      __$$OnDeleteBlogEventCopyWithImpl<$Res>;
  $Res call({int id});
}

/// @nodoc
class __$$OnDeleteBlogEventCopyWithImpl<$Res>
    extends _$BlogFeedEventCopyWithImpl<$Res>
    implements _$$OnDeleteBlogEventCopyWith<$Res> {
  __$$OnDeleteBlogEventCopyWithImpl(
      _$OnDeleteBlogEvent _value, $Res Function(_$OnDeleteBlogEvent) _then)
      : super(_value, (v) => _then(v as _$OnDeleteBlogEvent));

  @override
  _$OnDeleteBlogEvent get _value => super._value as _$OnDeleteBlogEvent;

  @override
  $Res call({
    Object? id = freezed,
  }) {
    return _then(_$OnDeleteBlogEvent(
      id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$OnDeleteBlogEvent implements OnDeleteBlogEvent {
  _$OnDeleteBlogEvent(this.id);

  @override
  final int id;

  @override
  String toString() {
    return 'BlogFeedEvent.delete(id: $id)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OnDeleteBlogEvent &&
            const DeepCollectionEquality().equals(other.id, id));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(id));

  @JsonKey(ignore: true)
  @override
  _$$OnDeleteBlogEventCopyWith<_$OnDeleteBlogEvent> get copyWith =>
      __$$OnDeleteBlogEventCopyWithImpl<_$OnDeleteBlogEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() load,
    required TResult Function(int id) delete,
  }) {
    return delete(id);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? load,
    TResult Function(int id)? delete,
  }) {
    return delete?.call(id);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? load,
    TResult Function(int id)? delete,
    required TResult orElse(),
  }) {
    if (delete != null) {
      return delete(id);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(OnFeedLoadEvent value) load,
    required TResult Function(OnDeleteBlogEvent value) delete,
  }) {
    return delete(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(OnFeedLoadEvent value)? load,
    TResult Function(OnDeleteBlogEvent value)? delete,
  }) {
    return delete?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(OnFeedLoadEvent value)? load,
    TResult Function(OnDeleteBlogEvent value)? delete,
    required TResult orElse(),
  }) {
    if (delete != null) {
      return delete(this);
    }
    return orElse();
  }
}

abstract class OnDeleteBlogEvent implements BlogFeedEvent {
  factory OnDeleteBlogEvent(final int id) = _$OnDeleteBlogEvent;

  int get id;
  @JsonKey(ignore: true)
  _$$OnDeleteBlogEventCopyWith<_$OnDeleteBlogEvent> get copyWith =>
      throw _privateConstructorUsedError;
}
