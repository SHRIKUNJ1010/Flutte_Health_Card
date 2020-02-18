import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class Doctor_profile extends StatefulWidget {
  static const routeName = '/Doctor_profile';

  @override
  Doctor_profileState createState() => Doctor_profileState();
}

class Doctor_profileState extends State<Doctor_profile> {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);
    return Scaffold();
  }
}
