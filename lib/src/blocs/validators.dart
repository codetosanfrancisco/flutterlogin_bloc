import 'dart:async';

class Validators {
  final validateEmail =
      StreamTransformer.fromHandlers(handleData: (email, sink) {
    if (email.contains('@')) {
      sink.add(email);
    } else {
      sink.addError("Enter a valid email.");
    }
  });

  final validatePassword =
      StreamTransformer.fromHandlers(handleData: (password, sink) {
    if (password.length > 3) {
      sink.add(password);
    } else {
      sink.addError("Password Must be at least 4 characters.");
    }
  });
}
