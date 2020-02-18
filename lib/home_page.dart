import 'package:flutter/material.dart';
import 'login_page.dart';
import 'signup_page.dart';
import 'login_signup_page.dart';
import 'package:flutter/services.dart';

var doctor = "Doctor";
var patient = "Patient";
var pass;

class HomePage extends StatefulWidget {
  static const routeName = '/home-page';
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return buildHome(context);
  }

  Scaffold buildHome(BuildContext context) {
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
                          Navigator.pushNamed(
                              context, login_signup_page.routeName);
                          pass = doctor;
                        },
                        child: Text(doctor),
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
                          Navigator.pushNamed(
                              context, login_signup_page.routeName);
                          pass = patient;
                        },
                        child: Text(patient),
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
}
