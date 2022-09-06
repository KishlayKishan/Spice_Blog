// Bloc => Business Logic Component
// Bloc -> Statemanagement (library), Bloc -> Design pattern

import 'dart:async';

import 'package:rxdart/rxdart.dart';
import 'package:spice_blog/auth/datasource/auth_repository.dart';
import 'package:spice_blog/auth/logic/validators.dart';
import 'package:spice_blog/common/observable/observable.dart';

class SignInBloc with Validators {
  SignInBloc() {
    email = Observable(validator: validateEmail);
    password = Observable(validator: validatePassword);
    passwordObscure = Observable.seeded(true);
  }

  late final Observable<String?> email;
  late final Observable<String?> password;
  late final Observable<bool> passwordObscure;

  Stream<bool> get validInputObs$ =>
      Rx.combineLatest2(email.obs$, password.obs$, (a, b) => true);

  Future<bool> signIn() async {
    final user = await AuthRepository()
        .signIn(email: email.value!, password: password.value!);
    return user != null;
  }

  void dispose() {
    email.dispose();
    password.dispose();
    passwordObscure.dispose();
  }
}
