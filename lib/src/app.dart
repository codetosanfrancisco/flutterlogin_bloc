import 'package:flutter/material.dart';
import './screens/LoginScreen.dart';
import './blocs/provider.dart'

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Provider(
      child: MaterialApp(
        title: "Log in here",
        home: Scaffold(
          body: LoginScreen(),
      ))
    );
}
}