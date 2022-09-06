import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:spice_blog/auth/logic/sign_up_bloc.dart';
import 'package:spice_blog/auth/screens/sign_in.dart';
import 'package:spice_blog/common/widgets/input_field.dart';
import 'package:spice_blog/common/widgets/vertical_spacing.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({Key? key}) : super(key: key);

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  late final SignUpBloc bloc;

  @override
  void initState() {
    super.initState();
    bloc = SignUpBloc();
  }

  Future<void> signUp() async {
    final isSuccess = await bloc.signUp();
    if (mounted) {
      if (isSuccess) {
        // Navigator.of(context)
        //     .push(MaterialPageRoute(builder: (context) => const SignInPage()));
      } else {
        ScaffoldMessenger.of(context)
            .showSnackBar(const SnackBar(content: Text("Some error occured!")));
      }
    }
  }

  @override
  void dispose() {
    bloc.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(
          vertical: 48.0,
          horizontal: MediaQuery.of(context).size.width / 6,
        ),
        child: Column(
          children: [
            const Text(
              'Sign Up for Spice Blog',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const VerticalSpacing(),
            StreamBuilder<String?>(
                stream: bloc.firstName.obs$,
                builder: (context, snapshot) {
                  return InputField(
                    onChanged: bloc.firstName.addValue,
                    labelText: 'First Name',
                    errorText: snapshot.error as String?,
                  );
                }),
            const VerticalSpacing(),
            StreamBuilder<String?>(
                stream: bloc.lastName.obs$,
                builder: (context, snapshot) {
                  return InputField(
                    onChanged: bloc.lastName.addValue,
                    labelText: 'Last Name',
                    errorText: snapshot.error as String?,
                  );
                }),
            const VerticalSpacing(),
            StreamBuilder<String?>(
                stream: bloc.email.obs$,
                builder: (context, snapshot) {
                  return InputField(
                    onChanged: bloc.email.addValue,
                    hintText: 'for e.g., abc@xyz.com',
                    labelText: 'Email ID',
                    errorText: snapshot.error as String?,
                  );
                }),
            const VerticalSpacing(),
            StreamBuilder<String?>(
                stream: bloc.password.obs$,
                builder: (context, snapshot) {
                  return StreamBuilder<bool>(
                      stream: bloc.passwordObscure.obs$,
                      initialData: true,
                      builder: (context, obscureSnap) {
                        return InputField(
                          errorText: snapshot.error as String?,
                          onChanged: bloc.password.addValue,
                          suffixIcon: InkWell(
                            child: !obscureSnap.data!
                                ? const Icon(Icons.visibility_off)
                                : const Icon(Icons.visibility),
                            onTap: () {
                              bloc.passwordObscure.addValue(!obscureSnap.data!);
                            },
                          ),
                          obscureText: obscureSnap.data,
                          hintText:
                              'Must have at least one uppercase letter, one lowercase letter and one number',
                          labelText: 'Password',
                        );
                      });
                }),
            const VerticalSpacing(),
            StreamBuilder<bool>(
                stream: bloc.validInputObs$,
                builder: (context, snapshot) {
                  final isValid = snapshot.data ?? false;
                  return ElevatedButton.icon(
                    onPressed: isValid ? signUp : null,
                    style: ElevatedButton.styleFrom(
                      padding: const EdgeInsets.all(16.0),
                    ),
                    icon: const Icon(Icons.login),
                    label: const Text('Sign Up'),
                  );
                }),
            const VerticalSpacing(),
            RichText(
              text: TextSpan(
                  text: 'Already a user?',
                  style: const TextStyle(color: Colors.black, fontSize: 12),
                  children: [
                    TextSpan(
                        text: ' Sign In ',
                        style: const TextStyle(color: Colors.blue),
                        recognizer: TapGestureRecognizer()
                          ..onTap = () {
                            // Navigator.of(context).pushReplacement(
                            //   MaterialPageRoute(
                            //       builder: (context) => const SignInPage(),
                            //       ),
                            // );
                          }),
                    const TextSpan(text: 'instead.'),
                  ]),
            ),
          ],
        ),
      ),
    );
  }
}
