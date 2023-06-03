import 'dart:math';
import 'package:flutter/material.dart';

void main() {
  return runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.red[700],
        appBar: AppBar(
          title: Center(
            child: Text('Dicee'),
          ),
          backgroundColor: Colors.red[800],
        ),
        body: DicePage(),
      ),
    );
  }
}

class DicePage extends StatefulWidget {
  @override
  State<DicePage> createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int numbertop = 7;
  int numberbottom = 7;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: <Widget>[
          Container(
            height: 60.0,
          ),
          Expanded(
              child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.red[700],
                      padding: EdgeInsets.all(0)),
                  onPressed: () {
                    setState(() {
                      var hello = Random();
                      numbertop = hello.nextInt(7);
                    });
                  },
                  child: Image.asset('images/dice$numbertop.png'))),
          Container(
            height: 50.0,
          ),
          Expanded(
              child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.red[700],
                    padding: EdgeInsets.all(0),
                  ),
                  onPressed: () {
                    setState(() {
                      var hello = Random();
                      numberbottom = hello.nextInt(7);
                    });
                  },
                  child: Image.asset('images/dice$numberbottom.png'))),
          Container(
            height: 60.0,
          ),
        ],
      ),
    );
  }
}
