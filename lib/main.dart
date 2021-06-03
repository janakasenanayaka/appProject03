import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(MyApp());
}


class MyApp extends StatelessWidget {


  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Dice game'),
          backgroundColor: Colors.red,
        ),
        body: DicePage(),
      ),
    );
  }
}


class DicePage extends StatefulWidget {
  @override
  _DicePageState createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int leftDiceNumber =2;
  int rightDiceNumber =2;

   void changeDiceFaced(){
     setState(() {
       leftDiceNumber = Random().nextInt(6)+1;
       rightDiceNumber = Random().nextInt(6)+1;
     });
   }


  @override
  Widget build(BuildContext context) {

    return Center(
            child: Row(
              children: [
                Expanded(
                  child: FlatButton(
                      onPressed: () {
                        changeDiceFaced();
                      },
                      child: Image.asset('images/dice$leftDiceNumber.png')
                  ),),
                Expanded(
                  child: FlatButton(
                      onPressed: () {
                        changeDiceFaced();
                      },
                      child: Image.asset('images/dice$rightDiceNumber.png')
                  ),),
              ],
            ),
    );
  }
}
