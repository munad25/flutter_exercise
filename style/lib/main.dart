import 'package:flutter/material.dart';

void main(){
  runApp(new MaterialApp(
    home: MyTextInput(),
  ));
}


class MyTextInput extends StatefulWidget{
  @override 
  MyTextInputState createState() => new MyTextInputState();

}

class MyTextInputState extends State<MyTextInput>{
  String result = "";
  @override 
  Widget build(BuildContext context){
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('Text Input'),
        backgroundColor: Colors.deepOrange,
      ),
      body: new Container(
        child: new Center(
          child: new Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
            new Padding(
              padding:EdgeInsets.only(
                right: 30,
                left: 40,
              ), 
              child: new TextField(
                decoration: new InputDecoration(
                  hintText: "Ketik Sesuatu",
                ),
                onChanged: (String str){
                  setState(() {
                   result = str; 
                  });
                },
              ),
            ),
              
              new Text(
                result
              )

            ],
          ),
        ),
      ),
    );
  }

}