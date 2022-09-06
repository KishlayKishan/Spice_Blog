import 'dart:async';

import 'package:rxdart/rxdart.dart';
import 'package:spice_blog/auth/datasource/auth_repository.dart';
import 'package:spice_blog/blogs/datasource/blog_repository.dart';
import 'package:spice_blog/blogs/datasource/models.dart';
import 'package:spice_blog/blogs/logic/validators.dart';
import 'package:spice_blog/common/observable/observable.dart';

class AddBlogBloc with Validators {
  late final Observable<String?> title;
  late final Observable<String?> imgUrl;
  late final Observable<String?> content;

  late final Observable<bool> isLoading;

  AddBlogBloc() {
    title = Observable(validator: titleValidator);
    imgUrl = Observable(validator: imgUrlValidator);
    content = Observable(validator: contentValidator);

    isLoading = Observable.seeded(false);
  }

  Stream<bool> get validInputObs$ => Rx.combineLatest(
      [title.obs$, imgUrl.obs$, content.obs$], (values) => true);

  Future<void> addBlog() async {
    await BlogRepository().addBlog(Blog(
      title: title.value!,
      content: content.value!,
      imageUrl: imgUrl.value!,
      author: Author(email: AuthRepository().currentUser!.email, photoUrl: ""),
      updatedAt: DateTime.now(),
    ));
  }

  void dispose() {
    title.dispose();
    imgUrl.dispose();
    content.dispose();
  }
}
