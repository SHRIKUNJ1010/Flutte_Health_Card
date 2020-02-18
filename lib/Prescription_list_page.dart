import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class Prescription_list_page extends StatefulWidget {
  static const routeName = '/Prescription_list_page';

  @override
  Prescription_list_pageState createState() => Prescription_list_pageState();
}

class Prescription_list_pageState extends State<Prescription_list_page> {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);
    return Scaffold();
  }
}
