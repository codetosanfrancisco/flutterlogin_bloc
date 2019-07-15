import 'package:flutter/material.dart';
import '../blocs/bloc.dart';
import '../blocs/provider.dart';

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final bloc = Provoder.of(context);
    // TODO: implement build
    return Container(
      margin: EdgeInsets.all(20.0),
      child: Column(
        children: <Widget>[
          emailField(bloc),
          passwordField(bloc),
          Container(margin: EdgeInsets.only(top: 25.0)),
          submitButton()
        ],
      ),
    );
  }

  Widget emailField(Bloc bloc) {
    return StreamBuilder(
      stream: bloc.email,
      builder: (context, snapshot) {
        return TextField(
          onChanged: bloc.changeEmail,
          keyboardType: TextInputType.emailAddress,
          decoration: InputDecoration(
              hintText: "123@gmail.com",
              labelText: "Email Address",
              errorText: snapshot.error),
        );
      },
    );
  }

  Widget passwordField(Bloc bloc) {
    return StreamBuilder(
        stream: bloc.password,
        builder: (context, snapshot) {
          return TextField(
              onChanged: bloc.changePassword,
              obscureText: false,
              decoration: InputDecoration(
                  hintText: "password",
                  labelText: "Password",
                  errorText: snapshot.error));
        });
  }

  Widget submitButton() {
    return RaisedButton(
      child: Text("Submit"),
      onPressed: () {},
      color: Colors.blue,
    );
  }
}
