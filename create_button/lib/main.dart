

import 'package:flutter/material.dart';

void main(){
  runApp(new MaterialApp(
    home: new MyButton()
    ,));
}


class MyButton extends StatefulWidget {
  @override
  ButtonState createState() => ButtonState();
}

class ButtonState extends State<MyButton> {
  int count = 0;
  List<String> string = ['flutter', 'is', 'awesome'];
  String displayString = '';

  void onPresses(){
    setState(() {
     displayString = string[count];
     count = count < 2 ? count + 1 : 0; 
    });
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('My First Button'),
        backgroundColor: Colors.deepOrange,

      ),
      body: new Container(
        child: Center( 
          child: new Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              new Text(displayString, style: new TextStyle(fontSize: 30.0, fontWeight: FontWeight.bold)),
              new Padding(padding: new EdgeInsets.all(15.0),),
              new RaisedButton(
                child: new Text('Press Me !', style: new TextStyle(color: Colors.white, fontStyle: FontStyle.italic, fontSize: 20.0)),
                color: Colors.red,
                onPressed: onPresses,
              )
            ],
          ),
        ),
       ),
    );
  }
}