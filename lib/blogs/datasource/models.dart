import 'package:equatable/equatable.dart';

class Blog with EquatableMixin {
  final int? id;
  final String title;
  final String content;
  final String imageUrl;
  final Author author;
  final DateTime updatedAt;

  const Blog({
    this.id,
    required this.title,
    required this.content,
    required this.imageUrl,
    required this.author,
    required this.updatedAt,
  });

  Map toJson() => {
        'title': title,
        'content': content,
        'imageUrl': Uri.encodeFull(imageUrl),
        'email': Uri.encodeFull(author.email),
      };

  factory Blog.fromJson(Map<String, dynamic> json) => Blog(
        id: json['id'],
        title: json['title'],
        content: json['content'],
        imageUrl: json['imageurl'],
        author: Author(email: json['email'], photoUrl: ""),
        updatedAt: DateTime.parse(json["updatedat"]),
      );

  Blog copyWith({
    int? id,
    String? title,
    String? content,
    String? imageUrl,
    Author? author,
    DateTime? updatedAt,
  }) =>
      Blog(
        id: id ?? this.id,
        title: title ?? this.title,
        content: content ?? this.content,
        imageUrl: imageUrl ?? this.imageUrl,
        author: author ?? this.author,
        updatedAt: updatedAt ?? this.updatedAt,
      );

  @override
  List<Object?> get props => [id, title, content, imageUrl, author, updatedAt];

  @override
  String toString() {
    final map = toJson();
    map['id'] = id;
    return map.toString();
  }
}

class Author with EquatableMixin {
  final String email;
  final String photoUrl;

  const Author({
    required this.email,
    required this.photoUrl,
  });

  @override
  List<Object?> get props => [email, photoUrl];
}
