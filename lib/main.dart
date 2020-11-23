import 'package:flutter/material.dart';

void main(){
  runApp(Myapp());
}


class Myapp extends StatefulWidget {
  @override
  _MyappState createState() => _MyappState();
}


class _MyappState extends State<Myapp> {

  bool _currentValue = false;
  final _dark = ThemeData(brightness: Brightness.dark,primaryColor: Colors.white,accentColor: Colors.yellowAccent);
  final _light = ThemeData(brightness: Brightness.light,primaryColor: Colors.black,accentColor: Colors.yellow);

  

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: _currentValue ? _dark : _light,
      home: SafeArea(
              child: Padding(
                padding: const EdgeInsets.only(top:5.0),
                child: Scaffold(
          appBar: AppBar(
            title: Text("Dark and light theme"),
            actions: [
                Switch(value: _currentValue, activeColor: Colors.white,activeTrackColor: Colors.lightGreen,inactiveTrackColor: Colors.grey,onChanged: (newvalue){
                  setState((){
                    _currentValue = newvalue;
                  });
                })
            ],
          ),
          body: Center(child: Text("Body Text",style: TextStyle(fontSize: 30.0))),
        ),
              ),
      ),
    );
  }
}