import 'dart:convert';
import 'package:http/http.dart' as http;

import 'package:flutter/material.dart';

import 'ghmembers.dart';
//import 'strings.dart';

class GHFlutter extends StatefulWidget {
  @override
  createState() => GHFlutterState();
}

class GHFlutterState extends State<GHFlutter> {
  // var _members = [];
  // GHFlutterState (this.u,this.p, {Key key,}) : super(key: key);
  var _members = <Member>[];
  final _biggerFont = const TextStyle(fontSize: 18.0);
  @override
  void initState() {
    super.initState();

    _loadData();
  }

  _loadData() async {
    String dataURL = "https://api.github.com/orgs/raywenderlich/members";
    http.Response response = await http.get(dataURL);

    setState(() {
      final membersJSON = json.decode(response.body);

      for (var memberJSON in membersJSON) {
        final member = Member(memberJSON["login"], memberJSON["avatar_url"]);
        _members.add(member);
      }
    });
  }

  Widget _buildRow(int i) {
    return Padding(
        padding: const EdgeInsets.all(10.0),
        child: ListTile(
          title: Text("${_members[i].login}", style: _biggerFont),
          leading: CircleAvatar(
              backgroundColor: Colors.blue[500],
              backgroundImage: NetworkImage(_members[i].avatarUrl)),
        ));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('@_@'),
      ),
      body: ListView.builder(
          itemCount: _members.length * 2,
          itemBuilder: (BuildContext context, int position) {
            if (position.isOdd)
              return Divider(
                thickness: 20.0,
              );

            final index = position ~/ 2;

            return _buildRow(index);
          }),
    );
  }
}
