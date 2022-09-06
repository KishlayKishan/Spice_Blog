import 'package:flutter/material.dart';
import 'package:spice_blog/auth/datasource/auth_repository.dart';
import 'package:spice_blog/auth/datasource/i_auth_repository.dart';
import 'package:spice_blog/auth/logic/sign_in_bloc.dart';
import 'package:spice_blog/auth/screens/sign_in.dart';
import 'package:spice_blog/blogs/screens/blogs.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Spice Blog',
      home: SignInBlocProvider(
        bloc: SignInBloc(),
        child: AuthRepository().currentUser == null
            ? SignInPage(bloc: SignInBloc())
            : const BlogFeed(),
      ),
    );
  }
}

class SignInBlocProvider extends InheritedWidget {
  final SignInBloc bloc;

  const SignInBlocProvider(
      {Key? key, required Widget child, required this.bloc})
      : super(key: key, child: child);

  static SignInBlocProvider? of(BuildContext context) {
    return context.dependOnInheritedWidgetOfExactType<SignInBlocProvider>();
  }

  @override
  bool updateShouldNotify(SignInBlocProvider oldWidget) {
    return false;
  }
}
