import 'package:spice_blog/auth/datasource/i_auth_repository.dart';
import 'package:spice_blog/auth/datasource/models.dart';

// dummy logic or stubs for testing
class MockAuthRepo implements IAuthRepository {
  static MockAuthRepo? _instance;
  MockAuthRepo._(); // Private Constructor
  factory MockAuthRepo() {
    _instance ??= MockAuthRepo._(); // ??= is called Elvis Operator
    return _instance!;
  }

  User? _user;

  @override
  User? get currentUser => _user;

  @override
  Future<User?> signIn(
      {required String email, required String password}) async {
    if (email == "jai.s@q.com" && password == "qwerty12") {
      _user = const User(
          email: "jai.s@q.com", firstName: "Jai", lastName: "Sachdeva");

      return _user;
    }
    return null;
  }

  @override
  Future<bool> signUp({
    required String email,
    required String password,
    required String firstName,
    required String lastName,
  }) async {
    return true;
  }
}
