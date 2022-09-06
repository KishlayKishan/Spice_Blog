import 'package:spice_blog/auth/datasource/models.dart';

abstract class IAuthRepository {
  User? get currentUser;

  Future<User?> signIn({required String email, required String password});

  Future<bool> signUp({
    required String email,
    required String password,
    required String firstName,
    required String lastName,
  });
}
