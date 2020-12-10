library emailandpassword;

import 'package:flutter/material.dart';
//import 'package:copy_linkedin/naturalreader/naturalreaders.dart';
//import 'package:copy_linkedin/gh/ghflutter.dart';
import 'package:copy_linkedin/userhome/userhomepage.dart';

class MyLinkedinEmailPassword extends StatefulWidget {
  @override
  MyEmailPassword createState() => MyEmailPassword();
}

class MyEmailPassword extends State<MyLinkedinEmailPassword> {
  String user;
  String pwd;
  bool _isHidden = true;
  final _formKey = GlobalKey<FormState>();
  final _formkeyp = GlobalKey<FormState>();
  void visibilitypwd() {
    setState(() {
      _isHidden = !_isHidden;
    });
  }

  //bool validation() {}

  @override
  Widget build(BuildContext context) {
    // Build a Form widget using the _formKey created above.
    var screenSize = MediaQuery.of(context).size;
    return Column(
      children: [
        Container(
          // color: Colors.green,
          width: screenSize.width > 600 ? 400 : 300,
          margin: EdgeInsets.only(top: 40.0, left: 20, right: 20),
          child: Form(
            //autovalidate: true,
            //autovalidateMode: true,
            key: _formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                TextFormField(
                  decoration: const InputDecoration(
                    icon: Icon(Icons.person),
                    hintText: 'Email or Phone No',
                    labelText: 'User Name *',
                  ),
                  onChanged: (tuser) {
                    this.user = tuser;
                  },
                  validator: (tuser) {
                    //this.user = tuser;
                    if (tuser.isEmpty) return 'User name required *';
                    if (tuser.length > 50) return 'User Name is  long enough';
                    if (tuser.length > 50) return 'User Name too short';
                    if (tuser != '0xTim')
                      return 'Incorrect UserName or Password';
                    if (user.contains('#')) return 'Do not use the # char.';

                    return null;
                  },
                ),
              ],
            ),
          ),
        ),
        Container(
          width: screenSize.width > 600 ? 360 : 260,
          margin: EdgeInsets.only(top: 10.0, left: 20, right: 20, bottom: 10),
          child: Row(children: <Widget>[
            Expanded(
              child: Form(
                key: _formkeyp,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    TextFormField(
                      decoration: const InputDecoration(
                        icon: Icon(Icons.lock),
                        hintText: 'Enter Password',
                        labelText: 'Password *',
                      ),
                      obscuringCharacter: '*', // defaults to *
                      obscureText: _isHidden,
                      onChanged: (tuser) {
                        this.user = tuser;
                      },
                      validator: (tpwd) {
                        //this.user = tuser;
                        if (tpwd.isEmpty) return 'Password required *';
                        if (tpwd.length < 7) return 'Password is too short';
                        if ('MDQ6VXNlcjk5MzgzMzc' != tpwd)
                          return 'Incorrect Password *';
                        else
                          this.pwd = tpwd;

                        return null;
                      },
                    ),
                  ],
                ),
              ),
            ),
            IconButton(
              icon: _isHidden
                  ? Icon(
                      Icons.visibility_off,
                      color: Colors.grey[500],
                    )
                  : Icon(Icons.visibility),
              tooltip: 'visibility',
              onPressed: visibilitypwd,
            ),
          ]),
        ),
        InkWell(
          onTap: () {},
          child: Text(
            'forget password ?',
            style: TextStyle(color: Colors.blueAccent, fontSize: 16),
          ),
        ),
        Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 16.0),
            child: ElevatedButton(
              onPressed: () {
                if (_formKey.currentState.validate() &&
                    _formkeyp.currentState.validate()) {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => UserHomePageBar()),
                  );
                } else
                  ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(content: Text('Something went wrong')));
              },
              child: Text('Sign in'),
            ),
          ),
        ),
      ],
    );
  }
}
