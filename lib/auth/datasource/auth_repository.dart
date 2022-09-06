import 'dart:convert';

import 'package:spice_blog/auth/datasource/i_auth_repository.dart';
import 'package:spice_blog/auth/datasource/models.dart';
import 'package:spice_blog/common/network_client/network_client.dart';

class AuthRepository implements IAuthRepository {
  final INetworkClient _networkClient;

  static AuthRepository? _instance;
  AuthRepository._(this._networkClient); // Private Constructor
  factory AuthRepository() {
    _instance ??=
        AuthRepository._(NetworkClient()); // ??= is called Elvis Operator
    return _instance!;
  }
  User? _user;
  @override
  User? get currentUser => _user;

  @override
  Future<User?> signIn(
      {required String email, required String password}) async {
    final response = await _networkClient.post(
      'login',
      data: {
        'email': email,
        'password': password,
      },
    );

    if (response.statusCode == 200) {
      _user = User.fromJson(json.decode(response.body));
    }

    return _user;
  }

  @override
  Future<bool> signUp({
    required String email,
    required String password,
    required String firstName,
    required String lastName,
  }) async {
    final response = await _networkClient.post(
      'signup',
      data: {
        'email': email,
        'password': password,
        'firstName': firstName,
        'lastName': lastName,
      },
    );

    return response.statusCode == 200;
  }
}
