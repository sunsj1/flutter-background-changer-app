import 'package:flutter/material.dart';
import 'dart:math';
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Background Changer',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}


class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List<Color> randomcolorslist =[
  Color(0xFFe0e0e0),
  Color(0xFF4d4d4d),
  Color(0xFF000000),
  Color(0xFFFF1998),
  Color(0xFFFF9800),
  Color(0xFF76FF03),
  Color(0xFF00B0FF),

  ];
  int index;
  Color colorrightnow = Color(0xFF000000);
  void changecolor(){
    setState(() {
      index = Random().nextInt(randomcolorslist.length);
      colorrightnow =randomcolorslist[index];
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: colorrightnow,
      ),
      child: FlatButton(
        onPressed:changecolor,
        child: Text(
          "Change..!",
          style: TextStyle(
            color:Colors.white,
            fontSize: 29.0,
            fontStyle: FontStyle.italic,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}


