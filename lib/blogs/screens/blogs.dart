import 'package:flutter/material.dart';
import 'package:spice_blog/blogs/datasource/models.dart';
import 'package:spice_blog/blogs/logic/blog_feed_bloc.dart';
import 'package:spice_blog/blogs/screens/add_blog.dart';
import 'package:spice_blog/blogs/screens/blog_details.dart';

class BlogFeed extends StatefulWidget {
  const BlogFeed({Key? key}) : super(key: key);

  @override
  State<BlogFeed> createState() => _BlogFeedState();
}

class _BlogFeedState extends State<BlogFeed> {
  late final BlogFeedBloc bloc;

  @override
  void initState() {
    super.initState();
    bloc = BlogFeedBloc();
  }

  @override
  void dispose() {
    bloc.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'All Blogs',
          style: TextStyle(color: Colors.black),
        ),
        backgroundColor: Colors.white,
        elevation: 0.25,
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          await Navigator.of(context).push(
              MaterialPageRoute(builder: (context) => const AddBlogPage()));
        },
        child: const Icon(Icons.add),
      ),
      body: StreamBuilder<List<Blog>>(
          stream: bloc.blogs.obs$,
          builder: (context, snapshot) {
            if (!snapshot.hasData) {
              return const CircularProgressIndicator();
            }

            final blogs = snapshot.data!;
            return ListView.builder(
              padding: const EdgeInsets.all(16.0),
              itemBuilder: (context, index) {
                final blog = blogs[index];
                return ListTile(
                  key: ValueKey(blog.id),
                  onTap: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => BlogDetails(blog: blog),
                      ),
                    );
                  },
                  trailing: IconButton(
                      onPressed: () => bloc.deleteBlog(blog.id!),
                      icon: const Icon(Icons.delete)),
                  leading: Image.network(
                    blog.imageUrl,
                    width: 100,
                    fit: BoxFit.cover,
                  ),
                  title: Text(blog.title),
                  subtitle: Text('by ${blog.author.email}'),
                );
              },
              itemCount: blogs.length,
            );
          }),
    );
  }
}
