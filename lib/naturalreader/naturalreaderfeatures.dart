library naturalreaderfeatures;

import 'package:flutter/material.dart';
class WrapFeatures extends StatelessWidget{
  WrapFeatures(this.myicon,this.featuresdiscrption,{Key key, this.title,}): super(key:key);
  final String title;
  final String featuresdiscrption;
  final IconData myicon;
  @override
  Widget build(BuildContext context)
  {
    return Container(
      padding: const EdgeInsets.all(20.0),
      child: Row(
        children: [
          Expanded(
            /*1*/
            child: Column(mainAxisSize: MainAxisSize.min,
              children: [
                Container(height:150,width:150,
                  decoration: BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(100)),
                      color: Colors.blue[100]),
                  child:IconButton(
                    icon: Icon(myicon,size:60),
                    color: Colors.blue,
                    onPressed: () {},
                  ),
                ),
                Container(
                  padding: const EdgeInsets.all(10),
                  child: Text(
                    title,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,fontSize: 24,
                    ),
                  ),
                ),
                Text(
                  featuresdiscrption,
                  style: TextStyle(fontSize:16,
                    color: Colors.black,
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

class WrapCard extends StatelessWidget {
  WrapCard(this.myicon, {Key key, this.title,}) : super(key: key);
  final String title;

  final IconData myicon;

  @override
  Widget build(BuildContext context) {
    return Card(child: Container(height: 150, width: 300,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(Radius.circular(10.0),),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 5,
            blurRadius: 17,
            offset: Offset(0, 3), // changes position of shadow
          ),
        ],
      ),
      //padding: const EdgeInsets.all(20.0),

      child: Row(
        children: [
          Expanded(
            /*1*/
            child: Column(mainAxisSize: MainAxisSize.min,
              children: [
                Container(
                  height: 50,
                  width: 50,
                  margin: EdgeInsets.only(left: 10, bottom: 10),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(100)),
                      color: Colors.blue[100]),
                  child: IconButton(
                    icon: Icon(myicon, size: 30),
                    color: Colors.blue,
                    onPressed: () {},
                  ),
                ),
                Text(
                  title,
                  style: TextStyle(fontSize: 16,
                    color: Colors.black,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    ),
    );
  }
}