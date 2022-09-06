// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'blog_feed_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$BlogFeedState {
  List<Blog> get blogs => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $BlogFeedStateCopyWith<BlogFeedState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BlogFeedStateCopyWith<$Res> {
  factory $BlogFeedStateCopyWith(
          BlogFeedState value, $Res Function(BlogFeedState) then) =
      _$BlogFeedStateCopyWithImpl<$Res>;
  $Res call({List<Blog> blogs});
}

/// @nodoc
class _$BlogFeedStateCopyWithImpl<$Res>
    implements $BlogFeedStateCopyWith<$Res> {
  _$BlogFeedStateCopyWithImpl(this._value, this._then);

  final BlogFeedState _value;
  // ignore: unused_field
  final $Res Function(BlogFeedState) _then;

  @override
  $Res call({
    Object? blogs = freezed,
  }) {
    return _then(_value.copyWith(
      blogs: blogs == freezed
          ? _value.blogs
          : blogs // ignore: cast_nullable_to_non_nullable
              as List<Blog>,
    ));
  }
}

/// @nodoc
abstract class _$$_BlogFeedStateCopyWith<$Res>
    implements $BlogFeedStateCopyWith<$Res> {
  factory _$$_BlogFeedStateCopyWith(
          _$_BlogFeedState value, $Res Function(_$_BlogFeedState) then) =
      __$$_BlogFeedStateCopyWithImpl<$Res>;
  @override
  $Res call({List<Blog> blogs});
}

/// @nodoc
class __$$_BlogFeedStateCopyWithImpl<$Res>
    extends _$BlogFeedStateCopyWithImpl<$Res>
    implements _$$_BlogFeedStateCopyWith<$Res> {
  __$$_BlogFeedStateCopyWithImpl(
      _$_BlogFeedState _value, $Res Function(_$_BlogFeedState) _then)
      : super(_value, (v) => _then(v as _$_BlogFeedState));

  @override
  _$_BlogFeedState get _value => super._value as _$_BlogFeedState;

  @override
  $Res call({
    Object? blogs = freezed,
  }) {
    return _then(_$_BlogFeedState(
      blogs == freezed
          ? _value._blogs
          : blogs // ignore: cast_nullable_to_non_nullable
              as List<Blog>,
    ));
  }
}

/// @nodoc

class _$_BlogFeedState implements _BlogFeedState {
  _$_BlogFeedState(final List<Blog> blogs) : _blogs = blogs;

  final List<Blog> _blogs;
  @override
  List<Blog> get blogs {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_blogs);
  }

  @override
  String toString() {
    return 'BlogFeedState(blogs: $blogs)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_BlogFeedState &&
            const DeepCollectionEquality().equals(other._blogs, _blogs));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_blogs));

  @JsonKey(ignore: true)
  @override
  _$$_BlogFeedStateCopyWith<_$_BlogFeedState> get copyWith =>
      __$$_BlogFeedStateCopyWithImpl<_$_BlogFeedState>(this, _$identity);
}

abstract class _BlogFeedState implements BlogFeedState {
  factory _BlogFeedState(final List<Blog> blogs) = _$_BlogFeedState;

  @override
  List<Blog> get blogs;
  @override
  @JsonKey(ignore: true)
  _$$_BlogFeedStateCopyWith<_$_BlogFeedState> get copyWith =>
      throw _privateConstructorUsedError;
}
