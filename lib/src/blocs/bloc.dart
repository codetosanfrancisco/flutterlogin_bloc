import 'dart:async';
import './validators.dart';
import 'package:rxdart/rxdart.dart';

class Bloc extends Object with Validators {
  final _email = BehaviorSubject<String>();
  final _password = BehaviorSubject<String>();

  get email => _email.stream.transform(validateEmail);

  get password => _password.stream.transform(validatePassword);

  Observable<bool> get submitValid =>
      Observable.combineLatest2(email, password, (e, p) => true);

  get changeEmail => _email.sink.add;

  get changePassword => _password.sink.add;

  submit() {
    final validEmail = _email.value;
    final validPassword = _password.value;
  }

  dispose() {
    _email.close();
    _password.close();
  }
}

final bloc = Bloc();
