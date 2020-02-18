import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_qr/Spreading_diseases_map.dart';

class Patient_app_Navigation extends StatefulWidget {
  static const routeName = '/Patient_app_Navigation';

  @override
  Patient_app_NavigationState createState() => Patient_app_NavigationState();
}

class Patient_app_NavigationState extends State<Patient_app_Navigation>
    with SingleTickerProviderStateMixin {
  int _widgetIndex = 0;
  bool isCollapsed = true;
  double screenWidth, screenHeight;
  final Duration duration = const Duration(milliseconds: 300);
  AnimationController _controller;
  Animation<double> _scaleAnimation;
  Animation<double> _menuScaleAnimation;
  Animation<Offset> _slideAnimation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(vsync: this, duration: duration);
    _menuScaleAnimation =
        Tween<double>(begin: 0.5, end: 1).animate(_controller);
    _scaleAnimation = Tween<double>(begin: 1, end: 0.6).animate(_controller);
    _slideAnimation = Tween<Offset>(begin: Offset(-1, 0), end: Offset(0, 0))
        .animate(_controller);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);
    Size size = MediaQuery.of(context).size;
    screenHeight = size.height;
    screenWidth = size.width;

    return Scaffold(
      backgroundColor: Colors.lightBlue,
      body: Stack(
        children: <Widget>[
          menu(context),
          IndexedStack(
            index: _widgetIndex,
            children: [
              Spreading_diseases_map(),
            ],
          )
        ],
      ),
    );
  }

  Widget menu(BuildContext context) {
    return SlideTransition(
      position: _slideAnimation,
      child: ScaleTransition(
        scale: _menuScaleAnimation,
        child: Align(
          alignment: Alignment.centerLeft,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              InkWell(
                child: Text(
                  "Spreading Diseases",
                  style: TextStyle(fontSize: 20),
                ),
                onTap: () {
                  setState(() {
                    _widgetIndex = 0;
                    if (isCollapsed)
                      _controller.forward();
                    else
                      _controller.reverse();

                    isCollapsed = !isCollapsed;
                  });
                },
              ),
              SizedBox(
                height: 10,
              ),
              InkWell(
                child: Text(
                  "Appointments",
                  style: TextStyle(fontSize: 20),
                ),
                onTap: () {
                  setState(() {
                    _widgetIndex = 1;
                    if (isCollapsed)
                      _controller.forward();
                    else
                      _controller.reverse();

                    isCollapsed = !isCollapsed;
                  });
                },
              ),
              SizedBox(
                height: 10,
              ),
              InkWell(
                child: Text(
                  "Profile",
                  style: TextStyle(fontSize: 20),
                ),
                onTap: () {
                  setState(() {
                    _widgetIndex = 1;
                    if (isCollapsed)
                      _controller.forward();
                    else
                      _controller.reverse();

                    isCollapsed = !isCollapsed;
                  });
                },
              ),
              SizedBox(
                height: 10,
              ),
              InkWell(
                child: Text(
                  "Attend Patient",
                  style: TextStyle(fontSize: 20),
                ),
                onTap: () {
                  setState(() {
                    _widgetIndex = 1;
                    if (isCollapsed)
                      _controller.forward();
                    else
                      _controller.reverse();

                    isCollapsed = !isCollapsed;
                  });
                },
              ),
              SizedBox(
                height: 10,
              ),
              InkWell(
                child: Text(
                  "Logout",
                  style: TextStyle(fontSize: 20),
                ),
                onTap: () {
                  print("logout");
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
