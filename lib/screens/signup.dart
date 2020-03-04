import 'package:flutter/material.dart';

class Signup extends StatefulWidget {
  @override
  _SignupState createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomPadding: false,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            child: Stack(
              children: <Widget>[
                Container(
                  padding: EdgeInsets.fromLTRB(15.0, 110.0, 0.0, 0.0),
                  child: Text(
                    'Signup',
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 80.0),
                  ),
                ),
                Container(
                  padding: EdgeInsets.fromLTRB(270.0, 113.0, 0.0, 0.0),
                  child: Text(
                    '.',
                    style: TextStyle(
                        color: Colors.green,
                        fontWeight: FontWeight.bold,
                        fontSize: 90.0),
                  ),
                )
              ],
            ),
          ),
          SizedBox(
            height: 50.0,
          ),
          Container(
            padding: EdgeInsets.only(top: 35.0, left: 20.0, right: 20.0),
            child: Column(
              children: <Widget>[
                TextField(
                  decoration: InputDecoration(
                    labelText: 'USERNAME',
                    labelStyle: TextStyle(
                      fontFamily: 'Montserrat',
                      fontWeight: FontWeight.bold,
                      color: Colors.grey,
                    ),
                    focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.green),
                    ),
                  ),
                ),
                SizedBox(height: 30.0),
                TextField(
                  decoration: InputDecoration(
                    labelText: 'EMAIL',
                    labelStyle: TextStyle(
                      fontFamily: 'Montserrat',
                      fontWeight: FontWeight.bold,
                      color: Colors.grey,
                    ),
                    focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.green),
                    ),
                  ),
                ),
                SizedBox(height: 30.0),
                TextField(
                  decoration: InputDecoration(
                    suffixIcon: Icon(Icons.remove_red_eye, color: Colors.grey),
                    labelText: 'PASSWORD',
                    labelStyle: TextStyle(
                      fontFamily: 'Montserrat',
                      fontWeight: FontWeight.bold,
                      color: Colors.grey,
                    ),
                    focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.green),
                    ),
                  ),
                  obscureText: true,
                ),
                SizedBox(height: 30.0),
                Container(
                  height: 50.0,
                  child: Material(
                    color: Colors.green,
                    shadowColor: Colors.greenAccent,
                    elevation: 5.0,
                    borderRadius: BorderRadius.circular(20.0),
                    child: GestureDetector(
                      child: Center(
                        child: Text(
                          'Register',
                          style: TextStyle(
                            color: Colors.white,
                            fontFamily: 'Montserrat',
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      onTap: () {
                        print('Firebase auth ... register...');
                      },
                    ),
                  ),
                ),
                SizedBox(height: 15.0),
                Container(
                  height: 50.0,
                  color: Colors.transparent,
                  child: Container(
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.black,
                        width: 2.0,
                        style: BorderStyle.solid,
                      ),
                      borderRadius: BorderRadius.circular(20.0),
                      color: Colors.transparent,
                    ),
                    child: Material(
                      color: Colors.transparent,
                      shadowColor: Colors.transparent,
                      elevation: 5.0,
                      borderRadius: BorderRadius.circular(20.0),
                      child: GestureDetector(
                        child: Center(
                          child: Text(
                            'Go Back',
                            style: TextStyle(
                              color: Colors.black,
                              fontFamily: 'Montserrat',
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        onTap: () {
                          print('Firebase auth ... register...');
                          Navigator.of(context).pop('/signup');
                        },
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
