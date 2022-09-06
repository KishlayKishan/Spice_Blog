import 'dart:convert';
import 'dart:developer';

import 'package:spice_blog/blogs/datasource/models.dart';
import 'package:spice_blog/common/network_client/network_client.dart';
import 'package:web_socket_channel/web_socket_channel.dart';

abstract class IBlogRepository {
  Stream<List<Blog>> fetchAllBlogs();
  Future<void> addBlog(Blog blog);
  Future<bool> deleteBlog(int id);
}

class BlogRepository implements IBlogRepository {
  final INetworkClient _networkClient;

  static BlogRepository? _instance;
  WebSocketChannel? _channel;

  BlogRepository._(this._networkClient); // Private Constructor
  factory BlogRepository() {
    _instance ??=
        BlogRepository._(NetworkClient()); // ??= is called Elvis Operator

    _instance!._channel ??= WebSocketChannel.connect(
        Uri.parse('wss://spiceblogserver-production.up.railway.app/ws'));

    return _instance!;
  }

  @override
  Stream<List<Blog>> fetchAllBlogs() async* {
    yield* _channel!.stream.map((event) {
      try {
        final data = json.decode(event);
        return data.map<Blog>((e) => Blog.fromJson(e)).toList();
      } catch (_) {
        return <Blog>[];
      }
    });
  }

  @override
  Future<void> addBlog(Blog blog) async {
    final res = await _networkClient.post('addBlog', data: blog.toJson());
    log(res.body);
  }

  @override
  Future<bool> deleteBlog(int id) async {
    final res = await _networkClient.delete('deleteBlog?id=$id');
    return res.statusCode == 200;
  }
}
