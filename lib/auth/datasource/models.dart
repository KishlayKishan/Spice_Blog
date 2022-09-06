import 'package:equatable/equatable.dart';

class User with EquatableMixin {
  final String email, firstName, lastName;

  const User({
    required this.email,
    required this.firstName,
    required this.lastName,
  });

  factory User.fromJson(Map<String, dynamic> json) => User(
        email: json['email'],
        firstName: json['first name'],
        lastName: json['last name'],
      );

  @override
  List<Object?> get props => [email, firstName, lastName];
}
