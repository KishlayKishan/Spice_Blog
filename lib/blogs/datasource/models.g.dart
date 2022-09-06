// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'models.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Blog _$$_BlogFromJson(Map<String, dynamic> json) => _$_Blog(
      id: json['id'] as int?,
      title: json['title'] as String,
      content: json['content'] as String,
      imageUrl: json['imageUrl'] as String,
      author: Author.fromJson(json['author'] as Map<String, dynamic>),
      updatedAt: DateTime.parse(json['updatedAt'] as String),
    );

Map<String, dynamic> _$$_BlogToJson(_$_Blog instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  val['title'] = instance.title;
  val['content'] = instance.content;
  val['imageUrl'] = instance.imageUrl;
  val['author'] = instance.author.toJson();
  val['updatedAt'] = instance.updatedAt.toIso8601String();
  return val;
}

_$_Author _$$_AuthorFromJson(Map<String, dynamic> json) => _$_Author(
      email: json['email'] as String,
      photoUrl: json['photoUrl'] as String,
    );

Map<String, dynamic> _$$_AuthorToJson(_$_Author instance) => <String, dynamic>{
      'email': instance.email,
      'photoUrl': instance.photoUrl,
    };
