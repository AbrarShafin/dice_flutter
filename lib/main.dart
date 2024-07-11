import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.redAccent,
        appBar: AppBar(
          title: const Text('Dice'),
          elevation: 2,
          centerTitle: true,
          backgroundColor: Colors.red,
          shadowColor: Colors.black,
        ),
        body: DicePage(),
      ),
    ),
  );
}

class DicePage extends StatefulWidget {
  const DicePage({super.key});

  @override
  State<DicePage> createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int leftdice = 1;
  int rightdice = 1;
  @override
  Widget build(BuildContext context) {
    void dice_gen() {
      setState(() {
        leftdice = Random().nextInt(6) + 1; //0 - 6
        rightdice = Random().nextInt(6) + 1;
      });
    }

    return Center(
      child: Row(
        children: [
          Expanded(
            // flex: 2,
            child: TextButton(
              onPressed: () {
                dice_gen();
              },
              child: Image.asset('images/dice$leftdice.png'),
            ),
          ),
          Expanded(
            // flex: 1,
            child: TextButton(
              onPressed: () {
                dice_gen();
              },
              child: Image.asset('images/dice$rightdice.png'),
            ),
          ),
        ],
      ),
    );
  }
}
