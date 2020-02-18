import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class Previous_records_page extends StatefulWidget {
  static const routeName = '/Previous_records_page';

  @override
  Previous_records_pageState createState() => Previous_records_pageState();
}

class Previous_records_pageState extends State<Previous_records_page> {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);
    return Scaffold();
  }
}
