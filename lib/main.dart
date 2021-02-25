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

  Widget winner() {
    if (rightdice > leftdice) {
      return Text(
        "Right Dice Win",
        style: TextStyle(
          fontSize: 50,
          color: Colors.white,
        ),
      );
    } else if (rightdice == leftdice) {
      return Text(
        "IT'S A TIE !",
        style: TextStyle(
          fontSize: 50,
          color: Colors.white,
        ),
      );
    } else {
      return Text(
        "Left Dice Win",
        style: TextStyle(
          fontSize: 50,
          color: Colors.white,
        ),
      );
    }
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
        backgroundColor: Colors.red,
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            winner(),
            Row(
              children: [
                Expanded(
                  child: FlatButton(
                    onPressed: () {
                      setState(() {
                        leftdice = Random().nextInt(6) + 1;
                      });
                    },
                    child: Image.asset('Dice/dice$leftdice.png'),
                  ),
                ),
                VerticalDivider(
                  thickness: 15,
                  indent: 250,
                  endIndent: 250,
                  color: Colors.black,
                ),
                Expanded(
                  child: FlatButton(
                    onPressed: () {
                      setState(() {
                        rightdice = Random().nextInt(6) + 1;
                      });
                    },
                    child: Image.asset('Dice/dice$rightdice.png'),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
