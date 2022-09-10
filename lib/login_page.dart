import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_qr/Patient_app_Navigation.dart';
import 'package:flutter_qr/main.dart';
import 'signup_page.dart';

class login_page extends StatefulWidget {
  static const routeName = '/login_page';

  @override
  _login_pageState createState() => _login_pageState();
}

final _formKey = GlobalKey<FormState>();

class _login_pageState extends State<login_page> {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage("images/background.png"), fit: BoxFit.cover)),
        child: Scaffold(
          backgroundColor: Colors.transparent,
          body: Stack(
            children: <Widget>[
              Container(
                  color: Colors.white60,
                  margin: const EdgeInsets.fromLTRB(20.0, 70.0, 20.0, 70.0),
                  child: form(context)),
            ],
          ),
        ),
      ),
    );
  }
}

Form form(BuildContext context) {
  return Form(
    key: _formKey,
    child: Column(
      children: <Widget>[
        Expanded(
          flex: 4,
          child: SizedBox(height: 110),
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(25, 0, 25, 0),
          child: TextFormField(
            textAlign: TextAlign.center,
            decoration: const InputDecoration(hintText: 'Email or Mobile No.'),
            validator: (value) {
              if (value.isEmpty) {
                return 'Please enter some text';
              }
              return null;
            },
          ),
        ),
        Expanded(
          flex: 1,
          child: SizedBox(height: 150),
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(25, 0, 25, 0),
          child: TextFormField(
            textAlign: TextAlign.center,
            decoration: const InputDecoration(hintText: 'Password'),
            validator: (value) {
              if (value.isEmpty) {
                return 'Please enter some text';
              }
              return null;
            },
          ),
        ),
        Expanded(
          flex: 2,
          child: SizedBox(height: 110),
        ),
        Container(
          color: Colors.lightBlue,
          child: InkWell(
            onTap: () {
              if (_formKey.currentState.validate()) {
                Navigator.pushNamed(context, Patient_app_Navigation.routeName);
              }
            },
            child: Text('Login'),
          ),
        ),
        Expanded(
          flex: 4,
          child: SizedBox(
            height: 10,
          ),
        ),
      ],
    ),
  );
}
