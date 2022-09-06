import 'package:flutter_test/flutter_test.dart';
import 'package:spice_blog/blogs/datasource/models.dart';

import '../mocks/mock_blog_repo.dart';

void main() {
  group("Blog Repository", () {
    final blogRepo = MockBlogRepo();

    test('stream test', () async {
      final blog = Blog(
        id: 1,
        title: "title",
        content: "content",
        imageUrl: "imageUrl",
        author: const Author(email: "email", photoUrl: "photoUrl"),
        updatedAt: DateTime(2022),
      );

      final blog2 = blog.copyWith(id: 2);

      ///
      Future<void> addValues() async {
        await blogRepo.addBlog(blog);
        await blogRepo.addBlog(blog2);
        await blogRepo.deleteBlog(1);
        await blogRepo.addBlog(blog);
      }

      addValues();

      final List<List<Blog>> expectedValues = [
        [blog],
        [blog, blog2],
        [blog],
        [blog2, blog]
      ];

      int i = 0;
      blogRepo.fetchAllBlogs().listen(expectAsync1<void, List<Blog>>((stream) {
            expect(stream, expectedValues[i]);
            i++;
          }, max: -1));
    });
  });
}
