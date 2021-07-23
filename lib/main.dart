import 'package:flutter/material.dart';
import 'dart:math';
void main() => runApp(
      MaterialApp(

        home: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.blueAccent[700],
            title: Center(
              child: Text("Ask Me Anything",
                  style: TextStyle(
                    color: Colors.white
                  ),
              ),
            ),
          ),
          body: Home() ,
        ),
      ),
    );

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  int counter=1;
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[400],
      body: Center(
        child: FlatButton(
            onPressed: (){
              setState(() {
                counter = Random().nextInt(5)+1;
              });
            },
            child: Image.asset("images/ball$counter.png"))
      ),
    );
  }
}



