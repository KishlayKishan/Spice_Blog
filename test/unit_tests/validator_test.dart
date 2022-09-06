import 'package:flutter_test/flutter_test.dart';
import 'package:spice_blog/auth/logic/validators.dart';

void main() {
  group('Email Validation on String?', () {
    test('.validateAsEmail() on null', () {
      expect(null.validateAsEmail(), null);
    });
    test('.validateAsEmail() on empty String', () {
      expect(''.validateAsEmail(), 'Not a valid email');
    });

    test('.validateAsEmail() on a non-empty string without symbols', () {
      expect('jai'.validateAsEmail(), 'Not a valid email');
    });
    test('.validateAsEmail() on a non-empty string with symbols', () {
      expect('jaispice.com'.validateAsEmail(), 'Not a valid email');
    });
    test('.validateAsEmail() on a valid email', () {
      expect('jai@spice.com'.validateAsEmail(), null);
    });
  });

  group('Password Validation on String?', () {
    test('.validateAsPassword() on null', () {
      expect(null.validateAsPassword(), null);
    });
    test('.validateAsPassword() on empty String', () {
      expect(
          ''.validateAsPassword(), 'Password must be of atleast 8 characters');
    });

    test('.validateAsPassword() on a string less than 8', () {
      expect('jai'.validateAsPassword(),
          'Password must be of atleast 8 characters');
    });

    test('.validateAsPassword() on a valid password', () {
      expect('jai@spice.com'.validateAsPassword(), null);
    });
  });
}
