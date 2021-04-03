import 'package:flutter/material.dart';

void main() {
  runApp(new Application());
}

class Application extends StatefulWidget {
  @override
  _ApplicationState createState() => _ApplicationState();
}

class _ApplicationState extends State<Application> {

  String ptext = '';

  void method1(value){
    setState(() {
      ptext = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Dummy Application',
      home: new Scaffold(
        appBar: new AppBar(
          backgroundColor: Colors.green,
          title: new Text('Dummy Application'),
        ),
        body: new Column(
          children: [
            new RaisedButton(onPressed: (){

              method1('You Pressed Raised Button');

            }, child: new Text('Raised Button'),),

            new FlatButton(onPressed: (){

              method1('You Pressed Flat Button');

            },child: new Text('Flat Button'),),
            new Text(ptext)
          ],
        ),
      ),
    );
  }
}



