import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:rxdart/rxdart.dart';
import 'package:spice_blog/auth/logic/sign_in_bloc.dart';
import 'package:spice_blog/auth/logic/validators.dart';
import 'package:spice_blog/auth/screens/sign_in.dart';
import 'package:spice_blog/common/observable/observable.dart';
import 'package:spice_blog/common/widgets/input_field.dart';

import 'sign_in_page_test.mocks.dart';

class MockNavigatorObserver extends Mock implements NavigatorObserver {}

class MockValidators with Validators {}

@GenerateMocks([SignInBloc])
void main() {
  //

  testWidgets('SignInPage Widget Test', (WidgetTester tester) async {
    TestWidgetsFlutterBinding.ensureInitialized();
    //
    final bloc = MockSignInBloc();
    final mockValidators = MockValidators();
    when(bloc.email)
        .thenReturn(Observable(validator: mockValidators.validateEmail));
    when(bloc.password)
        .thenReturn(Observable(validator: mockValidators.validatePassword));
    when(bloc.passwordObscure).thenReturn(Observable.seeded(true));
    when(bloc.validInputObs$).thenAnswer((_) =>
        Rx.combineLatest2(bloc.email.obs$, bloc.password.obs$, (a, b) => true));
    when(bloc.signIn()).thenAnswer((_) => Future.value(
        bloc.email.value == 'jai.s@q.com' &&
            bloc.password.value == 'qwerty12'));
    //
    final mockObserver = MockNavigatorObserver();
    await tester.pumpWidget(MaterialApp(
      home: SignInPage(bloc: bloc),
      navigatorObservers: [mockObserver],
    ));
    //
    final titleFinder = find.text('Sign In to Spice Blog');
    expect(titleFinder, findsOneWidget);

    await tester.enterText(emailInput, 'abc');
    await tester.pumpAndSettle(); // setState
    expect(find.text('abc'), findsOneWidget);

    expect(
        tester.widget<InputField>(emailInput).errorText, 'Not a valid email');

    await tester.enterText(emailInput, 'abc@xyz.com');
    await tester.pumpAndSettle(); // setState
    expect(find.text('abc@xyz.com'), findsOneWidget);
    expect(tester.widget<InputField>(emailInput).errorText, null);

    await tester.tap(find.byKey(const ValueKey('sign_in_submit_button')));
    await tester.pumpAndSettle(); // setState
    verifyNever(bloc.signIn());

    await tester.enterText(
        find.byKey(const ValueKey('password_input_field')), 'qiuweiwuqwie');
    await tester.pumpAndSettle(); // setState

    await tester.tap(find.byKey(const ValueKey('sign_in_submit_button')));
    await tester.pumpAndSettle(); // setState
    expect(find.text('User not found', skipOffstage: false), findsOneWidget);

    await tester.enterText(emailInput, 'jai.s@q.com');
    await tester.enterText(
        find.byKey(const ValueKey('password_input_field')), 'qwerty12');
    await tester.pumpAndSettle(); // setState
    await tester.tap(find.byKey(const ValueKey('sign_in_submit_button')));

    await tester.pumpAndSettle();

    verify(bloc.signIn());
    verify(mockObserver.didReplace(
        newRoute: anyNamed('newRoute'), oldRoute: anyNamed('oldRoute')));
  });
}

Finder get emailInput => find.byKey(const ValueKey('email_input_field'));
