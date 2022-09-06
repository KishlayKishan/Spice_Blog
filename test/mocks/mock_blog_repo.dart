import 'dart:async';

import 'package:spice_blog/blogs/datasource/blog_repository.dart';
import 'package:spice_blog/blogs/datasource/models.dart';

class MockBlogRepo implements IBlogRepository {
  final List<Blog> _ds = [];
  late final StreamController<List<Blog>> _controller =
      StreamController.broadcast();

  @override
  Future<void> addBlog(Blog blog) async {
    await Future.delayed(const Duration(seconds: 1));
    _ds.add(blog);
    _controller.add(_ds);
  }

  @override
  Future<bool> deleteBlog(int id) async {
    await Future.delayed(const Duration(seconds: 1));
    _matcher(Blog element) => element.id == id;
    if (_ds.any(_matcher)) {
      _ds.removeWhere(_matcher);
      _controller.add(_ds);
      return true;
    }
    return false;
  }

  @override
  Stream<List<Blog>> fetchAllBlogs() async* {
    yield* _controller.stream;
  }

  void dispose() {
    _controller.close();
  }
}
