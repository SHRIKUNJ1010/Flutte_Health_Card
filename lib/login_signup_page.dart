import 'package:flutter/material.dart';
import 'login_page.dart';
import 'signup_page.dart';
import 'package:flutter/services.dart';

var login = 'login';
var sigup = 'signup';

class login_signup_page extends StatefulWidget {
  static const routeName = '/login_signup_page';

  login_signup_pageState createState() => login_signup_pageState();
}

class login_signup_pageState extends State<login_signup_page> {
  @override
  Widget build(BuildContext context) {
    return build_login_signup_page(context);
  }
}

Scaffold build_login_signup_page(BuildContext context) {
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);
  return Scaffold(
    backgroundColor: Colors.transparent,
    body: Container(
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage("images/background.png"), fit: BoxFit.cover)),
      child: Stack(children: <Widget>[
        Container(
          color: Colors.white60,
          margin: const EdgeInsets.fromLTRB(20.0, 70.0, 20.0, 70.0),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Expanded(
                  flex: 3,
                  child: SizedBox(
                    height: 240,
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: Container(
                    width: 240,
                    height: 45,
                    child: FlatButton(
                      onPressed: () {
                        Navigator.pushNamed(context, login_page.routeName);
                      },
                      child: Text(login),
                      color: Colors.lightBlue,
                    ),
                  ),
                ),
                Expanded(
                  flex: 2,
                  child: SizedBox(
                    height: 300,
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: Container(
                    width: 240,
                    height: 45,
                    child: FlatButton(
                      onPressed: () {
                        Navigator.pushNamed(context, signup_page.routeName);
                      },
                      child: Text(sigup),
                      color: Colors.lightBlue,
                    ),
                  ),
                ),
                Expanded(
                  flex: 3,
                  child: SizedBox(
                    height: 240,
                  ),
                )
              ],
            ),
          ),
        ),
      ]),
    ),
  );
}
