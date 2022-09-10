import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_qr/Patient_app_Navigation.dart';

class Spreading_diseases_map extends StatefulWidget {
  static const routeName = '/Spreading_diseases_map';

  @override
  Spreading_diseases_mapState createState() => Spreading_diseases_mapState();
}

class Spreading_diseases_mapState extends State<Spreading_diseases_map> {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);
    return Scaffold(
      backgroundColor: Colors.red,
    );
  }
}

  /*Widget Spreading_diseases(BuildContext context)
  {
    return AnimatedPositioned(
        duration: duration,
        top: 0,
        bottom: 0,
        left: isCollapsed ? 0 : 0.6 * screenWidth,
        right: isCollapsed ? 0 : -0.4 * screenWidth,
        child: ScaleTransition(
          scale: _scaleAnimation,
          child: Material(
            elevation: 8,
            color: Colors.lightBlue,
            child: Column(
              children: <Widget>[
                SizedBox(
                  height: 25,
                ),
                Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    InkWell(
                      child: Icon(
                        Icons.menu,
                        color: Colors.white,
                      ),
                      onTap: () {
                        setState(() {
                          if(isCollapsed)
                            _controller.forward();
                          else
                            _controller.reverse();

                          isCollapsed = !isCollapsed;
                        });
                      },
                    ),
                    Text(
                      "Spreading Diseases Map",
                      style: TextStyle(fontSize: 24),
                    ),
                    Icon(
                      Icons.settings,
                      color: Colors.white,
                    )
                  ],
                ),
              ],
            ),
          ),
        ),
        );
  }*/

