import 'package:flutter/material.dart';
import 'dart:math';
void main(){
  return runApp(
    MaterialApp(
      home:Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          title:Text('Dice'),
          backgroundColor: Colors.red,
        ),
        body:DicePage(),
      ),
    ),
  );
}

class DicePage extends StatefulWidget {
  @override
  _DicePageState createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int leftDicenumber= 5;
  int rightDicenumber= 5;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
            child:FlatButton(
              onPressed: (){
                setState(() {
                  leftDicenumber = Random().nextInt(6)+1;
                  rightDicenumber = Random().nextInt(6)+1;
                });
              },
              child: Image.asset('images/dice$leftDicenumber.png'),
            ),
          ),
          Expanded(

            child:FlatButton(
                onPressed: (){
                  setState(() {
                    rightDicenumber = Random().nextInt(6)+1;
                    leftDicenumber = Random().nextInt(6)+1;
                  });
                },
                child: Image.asset('images/dice$rightDicenumber.png')),
          ),
        ],
      ),
    );
  }
}

