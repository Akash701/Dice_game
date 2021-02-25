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
        backgroundColor: Colors.redAccent,
        appBar: AppBar(
          backgroundColor: Colors.white,
          title: Center(
            child: Text(
              "Dice",
              style: TextStyle(
                color: Colors.black,
                fontSize: 30,
              ),
            ),
          ),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("0"),
                SizedBox(
                  width: 100,
                ),
                Text("0"),
              ],
            ),
            Row(
              children: [
                Expanded(
                  child: FlatButton(
                    onPressed: () {},
                    child: Image.asset('Dice/dice1.png'),
                  ),
                ),
                Expanded(
                  child: FlatButton(
                    onPressed: () {},
                    child: Image.asset('Dice/dice1.png'),
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
