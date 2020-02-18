import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class Appointments_page extends StatefulWidget {
  static const routeName = '/Appointments_page';

  @override
  Appointments_pageState createState() => Appointments_pageState();
}

class Appointments_pageState extends State<Appointments_page> {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);
    return Scaffold();
  }
}
