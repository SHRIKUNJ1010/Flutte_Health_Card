import 'package:flutter/material.dart';
import 'package:flutter_qr/Appointments_page.dart';
import 'package:flutter_qr/Attend_patient_page.dart';
import 'package:flutter_qr/Doctor_profile.dart';
import 'package:flutter_qr/Patient_app_Navigation.dart';
import 'package:flutter_qr/Doctor_app_navigation.dart';
import 'package:flutter_qr/Patient_profile.dart';
import 'package:flutter_qr/Prescription_list_page.dart';
import 'package:flutter_qr/Previous_records_page.dart';
import 'package:flutter_qr/Primary_checkup_page.dart';
import 'package:flutter_qr/Running_medication_page.dart';
import 'package:flutter_qr/Spreading_diseases_map.dart';
import 'package:flutter_qr/home_page.dart';
import 'package:flutter_qr/login_page.dart';
import 'package:flutter_qr/login_signup_page.dart';
import 'package:flutter_qr/signup_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

var login = "Doctor";
var signup = "Patient";

class _MyAppState extends State<MyApp> {
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'app',
      routes: {
        Appointments_page.routeName: (context) => Appointments_page(),
        Attend_patient_page.routeName: (context) => Attend_patient_page(),
        Doctor_profile.routeName: (context) => Doctor_profile(),
        Patient_app_Navigation.routeName: (context) => Patient_app_Navigation(),
        Doctor_app_Navigation.routeName: (context) => Doctor_app_Navigation(),
        HomePage.routeName: (context) => HomePage(),
        login_page.routeName: (context) => login_page(),
        login_signup_page.routeName: (context) => login_signup_page(),
        Patient_profile.routeName: (context) => Patient_profile(),
        Prescription_list_page.routeName: (context) => Prescription_list_page(),
        Previous_records_page.routeName: (context) => Previous_records_page(),
        Primary_checkup_page.routeName: (context) => Primary_checkup_page(),
        Running_medication_page.routeName: (context) =>
            Running_medication_page(),
        signup_page.routeName: (context) => signup_page(),
        Spreading_diseases_map.routeName: (context) => Spreading_diseases_map(),
      },
      home: HomePage(),
    );
  }
}
