import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class Running_medication_page extends StatefulWidget {
  static const routeName = '/Running_medication_page';

  @override
  Running_medication_pageState createState() => Running_medication_pageState();
}

class Running_medication_pageState extends State<Running_medication_page> {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);
    return Scaffold();
  }
}
