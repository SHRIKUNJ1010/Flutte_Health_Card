import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class Primary_checkup_page extends StatefulWidget {
  static const routeName = '/Primary_checkup_page';

  @override
  Primary_checkup_pageState createState() => Primary_checkup_pageState();
}

class Primary_checkup_pageState extends State<Primary_checkup_page> {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);
    return Scaffold();
  }
}
