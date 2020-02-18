import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class Attend_patient_page extends StatefulWidget {
  static const routeName = '/Attend_patient_page';

  @override
  Attend_patient_pageState createState() => Attend_patient_pageState();
}

class Attend_patient_pageState extends State<Attend_patient_page> {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);
    return Scaffold();
  }
}
