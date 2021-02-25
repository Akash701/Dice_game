import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(Dice());
}

class Dice extends StatefulWidget {
  @override
  _DiceState createState() => _DiceState();
}

class _DiceState extends State<Dice> {
  int leftdice = 1;
  int rightdice = 1;
  void dicechage() {
    leftdice = Random().nextInt(6) + 1;
    rightdice = Random().nextInt(6) + 1;
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Center(
            child: Text(
              'Dice',
              style: TextStyle(
                color: Colors.black,
                fontSize: 30,
              ),
            ),
          ),
          backgroundColor: Colors.white,
        ),
        backgroundColor: Colors.redAccent,
        body: Row(
          children: [
            Expanded(
              child: FlatButton(
                onPressed: () {},
                child: Image.asset('Dice/dice1.png'),
              ),
            ),
            VerticalDivider(
              thickness: 15,
              indent: 200,
              endIndent: 200,
              color: Colors.black,
            ),
            Expanded(
              child: FlatButton(
                onPressed: () {},
                child: Image.asset('Dice/dice1.png'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
