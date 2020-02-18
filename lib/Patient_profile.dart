import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class Patient_profile extends StatefulWidget {
  static const routeName = '/Patient_profile';

  @override
  Patient_profileState createState() => Patient_profileState();
}

class Patient_profileState extends State<Patient_profile> {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);
    return Scaffold();
  }
}
