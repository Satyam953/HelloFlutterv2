library loginhomebody;

import 'package:flutter/material.dart';
import 'package:copy_linkedin/naturalreader/naturalreaders.dart';
//import 'package:copy_linkedin/mypaint.dart';
//import 'package:copy_linkedin/gh/ghflutter.dart';
import '../authentication/emailandpassword.dart';

class LoginHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    return Scaffold(
      body: ListView(
        children: <Widget>[
          //Welcome Text
          Center(
            child: Container(
              height: 100,
              width: 400,
              padding: const EdgeInsets.only(
                left: 22,
                right: 10,
                top: 20,
              ),
              child: Column(
                children: [
                  Expanded(
                      child: Center(
                    child: Text(
                      'Welcome to your professional community',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 30,
                          color: Colors.blue[800]),
                    ),
                  )),
                ],
              ),
            ),
          ),

          //Email and password and sign in button layout
          MyLinkedinEmailPassword(),

          // or text
          Container(
            height: 40,
            width: screenSize.width > 600 ? 400 : 300,
            margin:
                EdgeInsets.only(left: 10.0, right: 10.0, top: 5.0, bottom: 5.0),
            child: Center(
              child: Container(
                width: 30,
                color: Colors.white,
                child: IconButton(
                  icon: Text(
                    'or',
                    style: TextStyle(
                      fontSize: 12,
                    ),
                  ),
                  tooltip: '',
                  onPressed: null,
                ),
              ),
            ),
          ),

          //Sign in with google text
          Center(
            child: Container(
              width: screenSize.width > 600 ? 350 : 250,
              margin: EdgeInsets.only(
                  left: 10.0, right: 10.0, top: 10.0, bottom: 10.0),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(
                    Radius.circular(40.0),
                  ),
                  border: Border.all(color: Colors.blueAccent)),
              padding: EdgeInsets.only(right: 10),
              child: Row(
                children: [
                  Text(
                    '   G+',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 22,
                        color: Colors.red[800]),
                  ),
                  Expanded(
                    child: IconButton(
                      icon: Text(
                        'Sign in with Google',
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold),
                      ),
                      tooltip: 'Quick Signsdf up Linkedin',
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => NaturalReaderHomePage()),
                        );
                      },
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
