import 'dart:math';
import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.deepOrange,
        appBar: AppBar(
          title: Center(
            child: Text('Dicee'),
          ),
          backgroundColor: Colors.deepOrange,
        ),
        body: DiceePage(),
      ),
    ),
  );
}

class DiceePage extends StatefulWidget {
  const DiceePage({Key? key}) : super(key: key);

  @override
  State<DiceePage> createState() => _DiceePageState();
}

class _DiceePageState extends State<DiceePage> {
  int leftDiceeNumber = 1;
  int rightDiceeNumber = 1;

  void changeDiceeNumber() {
    setState(() {
      leftDiceeNumber = Random().nextInt(6) + 1;
      rightDiceeNumber = Random().nextInt(6) + 1;
      // print('dicee $leftDiceeNumber got pressed');
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: [
          Expanded(
            child: TextButton(
              onPressed: () {
                changeDiceeNumber();
              },
              child: Image.asset('images/dice$leftDiceeNumber.png'),
            ),
          ),
          Expanded(
            child: TextButton(
              onPressed: () {
                changeDiceeNumber();
              },
              child: Image.asset('images/dice$rightDiceeNumber.png'),
            ),
          ),
        ],
      ),
    );
  }
}
