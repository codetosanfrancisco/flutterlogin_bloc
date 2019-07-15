import 'dart:async';
import './validators.dart';

class Bloc extends Object with Validators {
  final _email = StreamController<String>();
  final _password = StreamController<String>();

  get email => _email.stream.transform(validateEmail);

  get password => _password.stream.transform(validatePassword);

  get changeEmail => _email.sink.add;

  get changePassword => _password.sink.add;

  dispose() {
    _email.close();
    _password.close();
  }
}

final bloc = Bloc();
