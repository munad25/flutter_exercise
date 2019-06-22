import 'package:flutter/material.dart';


void main(){
  runApp(new MaterialApp(home: new MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: new AppBar(
          backgroundColor: Colors.blueGrey,
          title: new Text('My StatelssWidget'),
        ),
        body: new Container(
          padding: new EdgeInsets.only(
            left: 30.0,
            right: 30.0,
            top: 30.0,
          ),
          child: new Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              new MyCard(
                title: new Text('I Love You', style: new TextStyle(fontSize: 20.0, fontFamily: 'cambria')),
                icon: new Icon(Icons.favorite, size: 40.0, color: Colors.cyanAccent),
              ),

               new MyCard(
                title: new Text('I Love You', style: new TextStyle(fontSize: 20.0, fontFamily: 'cambria')),
                icon: new Icon(Icons.favorite, size: 40.0, color: Colors.cyanAccent),
              ),



            ],
          ),
        ),
    );
  }
}

class MyCard extends StatelessWidget {
  MyCard({this.title, this.icon});

  final Widget title;
  final Widget icon;

  @override
  Widget build(BuildContext context) {
    return new Container(
      padding: new EdgeInsets.only(bottom: 10.0),
      child: new Card(
        child: new Container(
          padding: new EdgeInsets.all(50.0),
          child: new Column(
            children: <Widget>[
              this.title,
              this.icon,
            ],
          ),
        ),
      ),
      
    );
  }
}