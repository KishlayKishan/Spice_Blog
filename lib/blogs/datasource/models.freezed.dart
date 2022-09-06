// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'models.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Blog _$BlogFromJson(Map<String, dynamic> json) {
  return _Blog.fromJson(json);
}

/// @nodoc
mixin _$Blog {
  @JsonKey(includeIfNull: false)
  int? get id => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get content => throw _privateConstructorUsedError;
  String get imageUrl => throw _privateConstructorUsedError;
  Author get author => throw _privateConstructorUsedError;
  DateTime get updatedAt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BlogCopyWith<Blog> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BlogCopyWith<$Res> {
  factory $BlogCopyWith(Blog value, $Res Function(Blog) then) =
      _$BlogCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(includeIfNull: false) int? id,
      String title,
      String content,
      String imageUrl,
      Author author,
      DateTime updatedAt});

  $AuthorCopyWith<$Res> get author;
}

/// @nodoc
class _$BlogCopyWithImpl<$Res> implements $BlogCopyWith<$Res> {
  _$BlogCopyWithImpl(this._value, this._then);

  final Blog _value;
  // ignore: unused_field
  final $Res Function(Blog) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? title = freezed,
    Object? content = freezed,
    Object? imageUrl = freezed,
    Object? author = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      content: content == freezed
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
      imageUrl: imageUrl == freezed
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String,
      author: author == freezed
          ? _value.author
          : author // ignore: cast_nullable_to_non_nullable
              as Author,
      updatedAt: updatedAt == freezed
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }

  @override
  $AuthorCopyWith<$Res> get author {
    return $AuthorCopyWith<$Res>(_value.author, (value) {
      return _then(_value.copyWith(author: value));
    });
  }
}

/// @nodoc
abstract class _$$_BlogCopyWith<$Res> implements $BlogCopyWith<$Res> {
  factory _$$_BlogCopyWith(_$_Blog value, $Res Function(_$_Blog) then) =
      __$$_BlogCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(includeIfNull: false) int? id,
      String title,
      String content,
      String imageUrl,
      Author author,
      DateTime updatedAt});

  @override
  $AuthorCopyWith<$Res> get author;
}

/// @nodoc
class __$$_BlogCopyWithImpl<$Res> extends _$BlogCopyWithImpl<$Res>
    implements _$$_BlogCopyWith<$Res> {
  __$$_BlogCopyWithImpl(_$_Blog _value, $Res Function(_$_Blog) _then)
      : super(_value, (v) => _then(v as _$_Blog));

  @override
  _$_Blog get _value => super._value as _$_Blog;

  @override
  $Res call({
    Object? id = freezed,
    Object? title = freezed,
    Object? content = freezed,
    Object? imageUrl = freezed,
    Object? author = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_$_Blog(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      content: content == freezed
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
      imageUrl: imageUrl == freezed
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String,
      author: author == freezed
          ? _value.author
          : author // ignore: cast_nullable_to_non_nullable
              as Author,
      updatedAt: updatedAt == freezed
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Blog implements _Blog {
  const _$_Blog(
      {@JsonKey(includeIfNull: false) this.id,
      required this.title,
      required this.content,
      required this.imageUrl,
      required this.author,
      required this.updatedAt});

  factory _$_Blog.fromJson(Map<String, dynamic> json) => _$$_BlogFromJson(json);

  @override
  @JsonKey(includeIfNull: false)
  final int? id;
  @override
  final String title;
  @override
  final String content;
  @override
  final String imageUrl;
  @override
  final Author author;
  @override
  final DateTime updatedAt;

  @override
  String toString() {
    return 'Blog(id: $id, title: $title, content: $content, imageUrl: $imageUrl, author: $author, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Blog &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.title, title) &&
            const DeepCollectionEquality().equals(other.content, content) &&
            const DeepCollectionEquality().equals(other.imageUrl, imageUrl) &&
            const DeepCollectionEquality().equals(other.author, author) &&
            const DeepCollectionEquality().equals(other.updatedAt, updatedAt));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(title),
      const DeepCollectionEquality().hash(content),
      const DeepCollectionEquality().hash(imageUrl),
      const DeepCollectionEquality().hash(author),
      const DeepCollectionEquality().hash(updatedAt));

  @JsonKey(ignore: true)
  @override
  _$$_BlogCopyWith<_$_Blog> get copyWith =>
      __$$_BlogCopyWithImpl<_$_Blog>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_BlogToJson(
      this,
    );
  }
}

abstract class _Blog implements Blog {
  const factory _Blog(
      {@JsonKey(includeIfNull: false) final int? id,
      required final String title,
      required final String content,
      required final String imageUrl,
      required final Author author,
      required final DateTime updatedAt}) = _$_Blog;

  factory _Blog.fromJson(Map<String, dynamic> json) = _$_Blog.fromJson;

  @override
  @JsonKey(includeIfNull: false)
  int? get id;
  @override
  String get title;
  @override
  String get content;
  @override
  String get imageUrl;
  @override
  Author get author;
  @override
  DateTime get updatedAt;
  @override
  @JsonKey(ignore: true)
  _$$_BlogCopyWith<_$_Blog> get copyWith => throw _privateConstructorUsedError;
}

Author _$AuthorFromJson(Map<String, dynamic> json) {
  return _Author.fromJson(json);
}

/// @nodoc
mixin _$Author {
  String get email => throw _privateConstructorUsedError;
  String get photoUrl => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AuthorCopyWith<Author> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthorCopyWith<$Res> {
  factory $AuthorCopyWith(Author value, $Res Function(Author) then) =
      _$AuthorCopyWithImpl<$Res>;
  $Res call({String email, String photoUrl});
}

/// @nodoc
class _$AuthorCopyWithImpl<$Res> implements $AuthorCopyWith<$Res> {
  _$AuthorCopyWithImpl(this._value, this._then);

  final Author _value;
  // ignore: unused_field
  final $Res Function(Author) _then;

  @override
  $Res call({
    Object? email = freezed,
    Object? photoUrl = freezed,
  }) {
    return _then(_value.copyWith(
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      photoUrl: photoUrl == freezed
          ? _value.photoUrl
          : photoUrl // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$$_AuthorCopyWith<$Res> implements $AuthorCopyWith<$Res> {
  factory _$$_AuthorCopyWith(_$_Author value, $Res Function(_$_Author) then) =
      __$$_AuthorCopyWithImpl<$Res>;
  @override
  $Res call({String email, String photoUrl});
}

/// @nodoc
class __$$_AuthorCopyWithImpl<$Res> extends _$AuthorCopyWithImpl<$Res>
    implements _$$_AuthorCopyWith<$Res> {
  __$$_AuthorCopyWithImpl(_$_Author _value, $Res Function(_$_Author) _then)
      : super(_value, (v) => _then(v as _$_Author));

  @override
  _$_Author get _value => super._value as _$_Author;

  @override
  $Res call({
    Object? email = freezed,
    Object? photoUrl = freezed,
  }) {
    return _then(_$_Author(
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      photoUrl: photoUrl == freezed
          ? _value.photoUrl
          : photoUrl // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Author implements _Author {
  const _$_Author({required this.email, required this.photoUrl});

  factory _$_Author.fromJson(Map<String, dynamic> json) =>
      _$$_AuthorFromJson(json);

  @override
  final String email;
  @override
  final String photoUrl;

  @override
  String toString() {
    return 'Author(email: $email, photoUrl: $photoUrl)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Author &&
            const DeepCollectionEquality().equals(other.email, email) &&
            const DeepCollectionEquality().equals(other.photoUrl, photoUrl));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(email),
      const DeepCollectionEquality().hash(photoUrl));

  @JsonKey(ignore: true)
  @override
  _$$_AuthorCopyWith<_$_Author> get copyWith =>
      __$$_AuthorCopyWithImpl<_$_Author>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_AuthorToJson(
      this,
    );
  }
}

abstract class _Author implements Author {
  const factory _Author(
      {required final String email,
      required final String photoUrl}) = _$_Author;

  factory _Author.fromJson(Map<String, dynamic> json) = _$_Author.fromJson;

  @override
  String get email;
  @override
  String get photoUrl;
  @override
  @JsonKey(ignore: true)
  _$$_AuthorCopyWith<_$_Author> get copyWith =>
      throw _privateConstructorUsedError;
}
