library myappbar;

import 'package:flutter/material.dart';

class UserHomePageBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    return Padding(
      padding: EdgeInsets.only(left: 10, bottom: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            child: Row(
              children: [
                Text(
                  'Linked',
                  style: TextStyle(
                      color: Colors.blue[800],
                      fontWeight: FontWeight.bold,
                      fontSize: 16),
                ),
                Container(
                  margin: EdgeInsets.only(left: 2),
                  height: 20,
                  width: 20,
                  color: Colors.blue[800],
                  child: Center(
                    child: Text('in',
                        style: TextStyle(
                            fontSize: 16,
                            color: Colors.white,
                            fontWeight: FontWeight.bold)),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 10.0,
            ),
            child: Align(
              alignment: Alignment.centerRight,
              child: Container(
                margin:
                    EdgeInsets.only(left: screenSize.width * 0.1, right: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    InkWell(
                        onTap: () {},
                        child: Text(
                          'join with resume',
                          style: TextStyle(fontSize: 14),
                        )),
                    Text(' | ',
                        style: TextStyle(color: Colors.grey, fontSize: 16)),
                    InkWell(
                      onTap: () {},
                      child: Text(
                        'join now ',
                        style: TextStyle(color: Colors.black, fontSize: 14),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
