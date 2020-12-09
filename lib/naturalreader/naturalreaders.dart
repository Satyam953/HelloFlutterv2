library naturalreaders;

import 'package:flutter/material.dart';

import 'package:copy_linkedin/naturalreader/naturalreaderfeatures.dart';

class NaturalReaderHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: <Widget>[
          NaturalReaderHomePageTitle(),
          Image.network(
            'https://www.naturalreaders.com/comfiles/indexfiles/img/logo-speeach.png',
          ),
          ImageDiscrption0(),
          NaturalReaderFeatures(),
          Image.network(
            'https://www.naturalreaders.com/comfiles/indexfiles/img/logo-listen-recommendations.png',
          ),
          ImageDiscrption1(),
          NaturalReaderCards(),
        ],
      ),
    );
  }
}

class NaturalReaderHomePageTitle extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      //color: Colors.green,
      height: 100,
      //margin: EdgeInsets.only(top: 20, bottom: 100),
      child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Container(
              //height: 60,
              //color: Colors.yellow,
              margin: EdgeInsets.only(left: 15, right: 10),
              child: Row(
                children: <Widget>[
                  Container(
                    color: Colors.red,
                    child: Image.network(
                      'https://www.naturalreaders.com/logo.svg',
                      height: 60,
                    ),
                  ),
                  Text(
                    ' NaturalReader',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontStyle: FontStyle.normal,
                      fontSize: 20,
                    ),
                    textDirection: TextDirection.ltr,
                  ),
                ],
              ),
            ),
          ]),
    );
  }
}

class ImageDiscrption0 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(right: 10, left: 10, top: 40, bottom: 40),
      child: Row(
        children: [
          Expanded(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Container(
                  padding: const EdgeInsets.only(
                      left: 10, right: 10, top: 20, bottom: 20),
                  child: Text(
                    'Powerfull Text-to-Speech for at home, work, or on the go.',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 30,
                    ),
                  ),
                ),
                Text(
                  'Upload text and documents or convert to mp3 to listen to anywhere anytime.',
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.black,
                  ),
                ),
                Wrap(children: [
                  Container(
                    margin: EdgeInsets.only(
                        top: 40, bottom: 20, left: 10, right: 10),
                    height: 80,
                    width: 250,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(5)),
                        color: Colors.blue[600]),
                    child: Center(
                        child: Text('Go To Online Reader',
                            style: TextStyle(
                              fontSize: 15,
                              color: Colors.white,
                            ))),
                  ),
                  Container(
                    margin: EdgeInsets.only(
                        top: 40, bottom: 20, left: 10, right: 10),
                    height: 80,
                    width: 250,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(5)),
                      border: Border.all(),
                    ),
                    child: Center(
                        child: Text('Watch Video',
                            style: TextStyle(
                              fontSize: 15,
                              color: Colors.black,
                            ))),
                  )
                ])
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class NaturalReaderFeatures extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    //String first='hello';
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(80)),
      ),
      margin: EdgeInsets.only(bottom: 100),
      child: Wrap(
        spacing: 30.0,
        //runSpacing:20.0,

        children: <Widget>[
          WrapFeatures(
            Icons.waves_outlined,
            'High quality, crystal-clear reading',
            title: 'Natural Sounding Voices',
          ),
          WrapFeatures(
              Icons.visibility, 'Read from scanned documents or images',
              title: 'OCR Technology'),
          WrapFeatures(Icons.speaker_phone_outlined,
              'Listen to past uploads or convert to mp3',
              title: 'Listen On The Go'),
        ],
      ),
    );
  }
}

class ImageDiscrption1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 10, left: 10, top: 40, bottom: 40),
      child: Row(
        children: [
          Expanded(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Container(
                  margin:
                      EdgeInsets.only(left: 10, right: 10, top: 20, bottom: 20),
                  child: Text(
                    'Personal Online & Personal Software',
                    style: TextStyle(fontSize: 25, color: Colors.blue),
                  ),
                ),
                Text(
                  'Listen on your own time at your own pace.',
                  style: TextStyle(
                    fontSize: 35,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
                Wrap(children: [
                  Container(
                    margin: EdgeInsets.only(
                        top: 40, bottom: 30, left: 10, right: 10),
                    height: 100,
                    width: 150,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(5)),
                        color: Colors.blue[600]),
                    child: Center(
                        child: Text('Personal Online',
                            style: TextStyle(
                              fontSize: 15,
                              color: Colors.white,
                            ))),
                  ),
                  Container(
                    margin: EdgeInsets.only(
                        top: 40, bottom: 30, left: 10, right: 10),
                    height: 100,
                    width: 150,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(5)),
                      border: Border.all(),
                    ),
                    child: Center(
                        child: Text('Personal Software',
                            style: TextStyle(
                              fontSize: 15,
                              color: Colors.black,
                            ))),
                  )
                ]),
                Text(
                  'For personal use and recommended for:',
                  style: TextStyle(
                    fontSize: 20,
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

class NaturalReaderCards extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(20),
      child: Wrap(
        //direction:Axis.horizontal,
        //alignment:WrapAlignment.end,
        //spacing:100.0,
        runSpacing: 0.0,
        children: <Widget>[
          WrapCard(Icons.school_rounded, title: 'Students'),
          WrapCard(Icons.corporate_fare, title: 'Working Progessionals'),
          WrapCard(Icons.person_pin_rounded, title: 'Dyslexic Readers'),
          WrapCard(Icons.language_rounded, title: 'Foreign Language Learners'),
        ],
      ),
    );
  }
}

class NaturalReadercard extends StatelessWidget {
  NaturalReadercard({Key key, this.title}) : super(key: key);
  final String title;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Card(
        child: InkWell(
          splashColor: Colors.blue.withAlpha(30),
          onTap: () {
            print('Card tapped.');
          },
          child: Container(
            margin: EdgeInsets.only(top: 30, bottom: 20, left: 40, right: 40),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(20)),
            ),
            width: 250,
            height: 100,
            child: Align(
              alignment: Alignment.centerLeft,
              child: Column(
                children: [
                  Container(
                    margin: EdgeInsets.only(
                      top: 20,
                      bottom: 10,
                    ),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(70)),
                        color: Colors.blue[100]),
                    child: Column(
                      children: <Widget>[
                        IconButton(
                          icon: Icon(Icons.home_outlined),
                          tooltip: 'Home',
                          onPressed: null,
                        ),
                      ],
                    ),
                  ),
                  Text(
                    title,
                    style: TextStyle(
                      fontSize: 18,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
