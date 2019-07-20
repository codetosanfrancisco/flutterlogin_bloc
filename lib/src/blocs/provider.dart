import 'package:flutter/material.dart';
import 'bloc.dart';

//Scoped Bloc Implementation

class Provider extends InheritedWidget {
  Provider({Key key, Widget child}) {
    super(key: key, child: child);
  }

  bool updateShouldNotify(_) => true;

  final bloc = Bloc();

  static Bloc of(context) {
    return (context.inheritFromWidgetOfExactType(Provider) as Provider).bloc;
  }
}
