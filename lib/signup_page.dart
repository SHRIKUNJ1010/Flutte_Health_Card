import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_qr/main.dart';
import 'login_page.dart';

class signup_page extends StatefulWidget {
  static const routeName = '/signup_page';

  @override
  _signup_pageState createState() => _signup_pageState();
}

final _formKey = GlobalKey<FormState>();
List<DropdownMenuItem<int>> genderList = [];

int _selectedGender = 0;

void loadGenderList() {
  genderList = [];
  genderList.add(new DropdownMenuItem(
    child: new Text('Male'),
    value: 0,
  ));
  genderList.add(new DropdownMenuItem(
    child: new Text('Female'),
    value: 1,
  ));
  genderList.add(new DropdownMenuItem(
    child: new Text('Other'),
    value: 2,
  ));
}

class _signup_pageState extends State<signup_page> {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage("images/background.png"), fit: BoxFit.cover)),
        child: Scaffold(
          backgroundColor: Colors.transparent,
          body: Stack(
            children: <Widget>[
              Container(
                color: Colors.white60,
                margin: const EdgeInsets.fromLTRB(20.0, 70.0, 20.0, 70.0),
                child: form(context),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Form form(BuildContext context) {
    loadGenderList();
    return Form(
      key: _formKey,
      child: getListWidget(context),
    );
  }

  Widget getListWidget(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          SizedBox(height: 10),
          TextFormField(
            textAlign: TextAlign.center,
            decoration: const InputDecoration(hintText: 'AadharNo.'),
            validator: (value) {
              if (value.isEmpty) {
                return 'Please enter some text';
              }
              return null;
            },
          ),
          SizedBox(height: 10),
          TextFormField(
            textAlign: TextAlign.center,
            decoration: const InputDecoration(hintText: 'FirstName'),
            validator: (value) {
              if (value.isEmpty) {
                return 'Please enter some text';
              }
              return null;
            },
          ),
          SizedBox(height: 10),
          TextFormField(
            textAlign: TextAlign.center,
            decoration: const InputDecoration(hintText: 'MiddleName'),
            validator: (value) {
              if (value.isEmpty) {
                return 'Please enter some text';
              }
              return null;
            },
          ),
          SizedBox(height: 10),
          TextFormField(
            textAlign: TextAlign.center,
            decoration: const InputDecoration(hintText: 'LastName'),
            validator: (value) {
              if (value.isEmpty) {
                return 'Please enter some text';
              }
              return null;
            },
          ),
          SizedBox(height: 10),
          TextFormField(
            textAlign: TextAlign.center,
            decoration: const InputDecoration(hintText: 'Email'),
            validator: (value) {
              if (value.isEmpty) {
                return 'Please enter some text';
              }
              return null;
            },
          ),
          SizedBox(height: 10),
          Padding(
            padding: const EdgeInsets.fromLTRB(100.0, 0, 100.0, 0),
            child: DropdownButton(
              hint: Text('Select Gender'),
              items: genderList,
              value: _selectedGender,
              onChanged: (value) {
                setState(() {
                  _selectedGender = value;
                });
              },
              isExpanded: true,
            ),
          ),
          SizedBox(height: 10),
          TextFormField(
            textAlign: TextAlign.center,
            decoration: const InputDecoration(hintText: 'Phone Number'),
            validator: (value) {
              if (value.isEmpty) {
                return 'Please enter some text';
              }
              return null;
            },
          ),
          SizedBox(height: 10),
          TextFormField(
            textAlign: TextAlign.center,
            decoration: const InputDecoration(hintText: 'Address Line 1'),
            validator: (value) {
              if (value.isEmpty) {
                return 'Please enter some text';
              }
              return null;
            },
          ),
          SizedBox(height: 10),
          TextFormField(
            textAlign: TextAlign.center,
            decoration: const InputDecoration(hintText: 'Address Line 2'),
            validator: (value) {
              if (value.isEmpty) {
                return 'Please enter some text';
              }
              return null;
            },
          ),
          SizedBox(height: 10),
          TextFormField(
            textAlign: TextAlign.center,
            decoration: const InputDecoration(hintText: 'City'),
            validator: (value) {
              if (value.isEmpty) {
                return 'Please enter some text';
              }
              return null;
            },
          ),
          SizedBox(height: 10),
          TextFormField(
            textAlign: TextAlign.center,
            decoration: const InputDecoration(hintText: 'State'),
            validator: (value) {
              if (value.isEmpty) {
                return 'Please enter some text';
              }
              return null;
            },
          ),
          SizedBox(height: 10),
          TextFormField(
            textAlign: TextAlign.center,
            decoration: const InputDecoration(hintText: 'Area/Zip Code'),
            validator: (value) {
              if (value.isEmpty) {
                return 'Please enter some text';
              }
              return null;
            },
          ),
          SizedBox(height: 10),
          TextFormField(
            textAlign: TextAlign.center,
            decoration:
                const InputDecoration(hintText: 'Emergency Contact FirstName'),
            validator: (value) {
              if (value.isEmpty) {
                return 'Please enter some text';
              }
              return null;
            },
          ),
          SizedBox(height: 10),
          TextFormField(
            textAlign: TextAlign.center,
            decoration:
                const InputDecoration(hintText: 'Emergency Contact LastName'),
            validator: (value) {
              if (value.isEmpty) {
                return 'Please enter some text';
              }
              return null;
            },
          ),
          SizedBox(height: 10),
          TextFormField(
            textAlign: TextAlign.center,
            decoration: const InputDecoration(
                hintText: 'Emergency Contact Relationship'),
            validator: (value) {
              if (value.isEmpty) {
                return 'Please enter some text';
              }
              return null;
            },
          ),
          SizedBox(height: 10),
          TextFormField(
            textAlign: TextAlign.center,
            decoration:
                const InputDecoration(hintText: 'Emergency Contact Number'),
            validator: (value) {
              if (value.isEmpty) {
                return 'Please enter some text';
              }
              return null;
            },
          ),
          SizedBox(height: 10),
          Container(
            color: Colors.lightBlue,
            child: InkWell(
              onTap: () {
                if (_formKey.currentState.validate()) {
                  Navigator.pushNamed(context, login_page.routeName);
                }
              },
              child: Text('Sign Up'),
            ),
          ),
          SizedBox(
            height: 10,
          ),
        ],
      ),
    );
  }
}
