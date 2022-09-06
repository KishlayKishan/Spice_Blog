import 'dart:async';

extension Validator on String? {
  String? validateAsEmail() {
    final emailRegex = RegExp(
        r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+");

    if (this != null) {
      if (!emailRegex.hasMatch(this!)) {
        return "Not a valid email";
      }
    }
    return null;
  }

  String? validateAsPassword() {
    if (this != null) {
      if (this!.length < 8) {
        return 'Password must be of atleast 8 characters';
      }
    }
    return null;
  }
}

mixin Validators {
  StreamTransformer<String?, String?> validateEmail =
      StreamTransformer.fromHandlers(handleData: (event, sink) {
    final error = event.validateAsEmail();
    if (error != null) {
      sink.addError(error);
    } else {
      sink.add(event); // confirming that entered value is a valid email
    }
  });

  StreamTransformer<String?, String?> validatePassword =
      StreamTransformer.fromHandlers(handleData: (event, sink) {
    final error = event.validateAsPassword();
    if (error != null) {
      sink.addError(error);
    } else {
      sink.add(event);
    }
  });

  StreamTransformer<String?, String?> validateName =
      StreamTransformer.fromHandlers(handleData: (event, sink) {
    if (event == null || event.length < 2) {
      sink.addError('Name must be of atleast 2 characters');
    } else {
      sink.add(event);
    }
  });
}
