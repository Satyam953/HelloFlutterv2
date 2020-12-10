import 'dart:convert';
import 'package:http/http.dart' as http;
//import 'package:copy_linkedin/userhome/userhomepage.dart';

import 'package:flutter/material.dart';

import 'ghmembers.dart';
//import 'strings.dart';

class GHFlutter extends StatefulWidget {
  final String guser;
  final String gpwd;
  GHFlutter(
    this.guser,
    this.gpwd, {
    Key key,
  }) : super(key: key);
  @override
  createState() => GHFlutterState();
}

class GHFlutterState extends State<GHFlutter> {
  // var _members = [];
  // GHFlutterState (this.u,this.p, {Key key,}) : super(key: key);
  var _members = <Member>[];

  //final _biggerFont = const TextStyle(fontSize: 18.0);
  @override
  void initState() {
    super.initState();

    _loadData();
  }

  Future<bool> _loadData() async {
    String dataURL = "https://api.github.com/orgs/raywenderlich/members";
    http.Response response = await http.get(dataURL);

    setState(() {
      final membersJSON = json.decode(response.body);

      for (var memberJSON in membersJSON) {
        final member = Member(memberJSON["login"], memberJSON["node_id"],
            memberJSON["avatar_url"]);
        if ('MDQ6VXNlcjk5MzgzMzc=' == member.nodeid) {
          _members.add(member);
          return true;
        }
      }
    });
    return false;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Image.network(
            'https://avatars3.githubusercontent.com/u/9938337?v=4',
            fit: BoxFit.cover,
            height: 50,
            width: 50,
          ),
        ),
        body: ListView(
          children: [],
        ));
  }
}
